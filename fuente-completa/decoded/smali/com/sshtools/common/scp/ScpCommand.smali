.class public Lcom/sshtools/common/scp/ScpCommand;
.super Lcom/sshtools/common/command/AbstractExecutableCommand;
.source "ScpCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/scp/ScpCommand$ScpCommandFactory;
    }
.end annotation


# static fields
.field private static BUFFER_SIZE:I = 0x4000


# instance fields
.field private buffer:[B

.field private currentDirectory:Ljava/lang/String;

.field private destination:Ljava/lang/String;

.field private directory:Z

.field private exitCode:I

.field private filePolicy:Lcom/sshtools/common/policy/FileSystemPolicy;

.field private firstPath:Z

.field private from:Z

.field private nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

.field private preserveAttributes:Z

.field private recursive:Z

.field private to:Z

.field private verbosity:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 106
    const-string v0, "."

    invoke-direct {p0, v0}, Lcom/sshtools/common/scp/ScpCommand;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/sshtools/common/command/AbstractExecutableCommand;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/sshtools/common/scp/ScpCommand;->verbosity:I

    const/high16 v0, -0x80000000

    .line 92
    iput v0, p0, Lcom/sshtools/common/scp/ScpCommand;->exitCode:I

    .line 98
    sget v0, Lcom/sshtools/common/scp/ScpCommand;->BUFFER_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->buffer:[B

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/sshtools/common/scp/ScpCommand;->firstPath:Z

    .line 113
    iput-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->currentDirectory:Ljava/lang/String;

    return-void
.end method

.method private fireDownloadErrorEvent([BLjava/lang/String;Ljava/util/Date;JLjava/lang/Throwable;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 1

    .line 811
    new-instance p7, Lcom/sshtools/common/events/Event;

    const v0, -0xffffbf

    invoke-direct {p7, p0, v0, p6}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    const-string p6, "FILE_NAME"

    .line 816
    invoke-virtual {p7, p6, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p2

    const-string p6, "OP_STARTED"

    .line 819
    invoke-virtual {p2, p6, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p2

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    .line 822
    const-string p6, "OP_FINISHED"

    invoke-virtual {p2, p6, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p2

    const-string p3, "BYTES_TRANSFERED"

    .line 827
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .line 825
    invoke-virtual {p2, p3, p4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p2

    iget-object p3, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    .line 830
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object p3

    .line 828
    const-string p4, "FILE_FACTORY"

    invoke-virtual {p2, p4, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p2

    const-string p3, "HANDLE"

    .line 831
    invoke-virtual {p2, p3, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    iget-object p2, p0, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    .line 836
    invoke-interface {p2}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object p2

    .line 834
    const-string p3, "CONNECTION"

    invoke-virtual {p1, p3, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 811
    invoke-direct {p0, p1}, Lcom/sshtools/common/scp/ScpCommand;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method private fireEvent(Lcom/sshtools/common/events/Event;)V
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->populateEvent(Lcom/sshtools/common/events/Event;)V

    .line 841
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method private fireUploadErrorEvent([BLjava/lang/String;Ljava/util/Date;JLjava/lang/Throwable;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 2

    .line 1252
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v1, -0xffffc0

    invoke-direct {v0, p0, v1, p6}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;ILjava/lang/Throwable;)V

    const-string p6, "FILE_NAME"

    .line 1257
    invoke-virtual {v0, p6, p2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p2

    const-string p6, "OP_STARTED"

    .line 1260
    invoke-virtual {p2, p6, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p2

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    .line 1263
    const-string p6, "OP_FINISHED"

    invoke-virtual {p2, p6, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p2

    const-string p3, "BYTES_TRANSFERED"

    .line 1268
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .line 1266
    invoke-virtual {p2, p3, p4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p2

    iget-object p3, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    .line 1271
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object p3

    .line 1269
    const-string p4, "FILE_FACTORY"

    invoke-virtual {p2, p4, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p2

    const-string p3, "HANDLE"

    .line 1272
    invoke-virtual {p2, p3, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    const-string p2, "CONNECTION"

    .line 1275
    invoke-virtual {p1, p2, p7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 1252
    invoke-direct {p0, p1}, Lcom/sshtools/common/scp/ScpCommand;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method

.method private parseCommand(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1283
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 1284
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1291
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    .line 1292
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v4

    add-int/2addr v0, v4

    .line 1293
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p2, v0

    return-void

    .line 1287
    :cond_0
    const-string p1, "Syntax error in cmd"

    invoke-direct {p0, p1}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    .line 1288
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private readFromRemote(Ljava/lang/String;)V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 877
    const-string v0, "User quota will be exceeded"

    const-string v9, "Closing handle"

    const-string v10, "Invalid handle."

    const-string v3, "File {} not found"

    const-string v4, "HANDLE"

    const-string v5, "uploadQuota"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    .line 878
    invoke-direct {v1}, Lcom/sshtools/common/scp/ScpCommand;->writeOk()V

    .line 880
    :goto_0
    iget-object v7, v1, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v7}, Lcom/sshtools/common/ssh/SessionChannelServer;->isClosed()Z

    move-result v7

    if-nez v7, :cond_21

    iget-object v7, v1, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v7}, Lcom/sshtools/common/ssh/SessionChannelServer;->isRemoteEOF()Z

    move-result v7

    if-nez v7, :cond_21

    .line 881
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v7

    const/4 v11, 0x0

    if-eqz v7, :cond_0

    .line 882
    const-string v7, "Waiting for command"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 885
    :cond_0
    :try_start_0
    invoke-direct {v1}, Lcom/sshtools/common/scp/ScpCommand;->readString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, -0x80000000

    .line 886
    iput v8, v1, Lcom/sshtools/common/scp/ScpCommand;->exitCode:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_48

    .line 891
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 892
    const-string v8, "Got command \'{}\'"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    :cond_1
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v12, 0x54

    if-eq v8, v12, :cond_1f

    packed-switch v8, :pswitch_data_0

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected cmd: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    .line 1246
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SCP unexpected cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :pswitch_0
    invoke-direct {v1}, Lcom/sshtools/common/scp/ScpCommand;->writeOk()V

    return-void

    .line 916
    :pswitch_1
    invoke-direct {v1, v7, v6}, Lcom/sshtools/common/scp/ScpCommand;->parseCommand(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v7, 0x2

    .line 918
    aget-object v12, v6, v7

    .line 924
    invoke-static {}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->create()Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v13

    .line 927
    :try_start_1
    iget-object v15, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v15, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withFileAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v14, 0x1

    goto :goto_2

    .line 933
    :catch_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 934
    const-string v15, "File {} permission denied!"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 930
    :catch_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 931
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    move v14, v11

    :goto_2
    const/16 v15, 0x44

    .line 938
    const-string v7, "Permission denied"

    const-string v11, "File not found"

    if-ne v8, v15, :cond_d

    .line 940
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 941
    const-string v8, "Got directory request"

    move-object/from16 v18, v6

    const/4 v15, 0x0

    new-array v6, v15, [Ljava/lang/Object;

    invoke-static {v8, v6}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    move-object/from16 v18, v6

    .line 943
    :goto_3
    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v12

    :goto_4
    const/4 v15, 0x0

    goto :goto_5

    :cond_4
    if-nez v14, :cond_5

    .line 945
    iget-boolean v6, v1, Lcom/sshtools/common/scp/ScpCommand;->firstPath:Z

    if-eqz v6, :cond_5

    move-object v6, v2

    goto :goto_4

    .line 948
    :cond_5
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v6, ""

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 951
    :goto_5
    iput-boolean v15, v1, Lcom/sshtools/common/scp/ScpCommand;->firstPath:Z

    .line 954
    :try_start_2
    iget-object v8, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v8, v6}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v8

    .line 955
    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 961
    invoke-virtual {v13, v8}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withFileAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    goto :goto_6

    .line 956
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid target "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ", must be a directory"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 958
    invoke-direct {v1, v8}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    .line 959
    new-instance v15, Ljava/io/IOException;

    invoke-direct {v15, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 966
    :catch_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 967
    const-string v8, "File {} permission denied"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_6
    const/4 v8, 0x2

    goto :goto_7

    .line 963
    :catch_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 964
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 970
    :goto_7
    invoke-virtual {v13, v8}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withType(I)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 971
    invoke-virtual {v1}, Lcom/sshtools/common/scp/ScpCommand;->getSession()Lcom/sshtools/common/ssh/SessionChannel;

    move-result-object v8

    invoke-interface {v8}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v8

    invoke-interface {v8}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v8

    const-class v15, Lcom/sshtools/common/scp/ScpPolicy;

    invoke-interface {v8, v15}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sshtools/common/scp/ScpPolicy;

    invoke-virtual {v8}, Lcom/sshtools/common/scp/ScpPolicy;->getSCPCharsetEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withCharsetEncoding(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    if-nez v14, :cond_c

    .line 975
    :try_start_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 976
    const-string v8, "Creating directory {}"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    :cond_9
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 979
    const-string v8, "Setting permissions on directory"

    const/4 v15, 0x0

    new-array v14, v15, [Ljava/lang/Object;

    invoke-static {v8, v14}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    :cond_a
    invoke-static {}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->create()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v8

    const/16 v17, 0x0

    aget-object v14, v18, v17

    .line 981
    invoke-virtual {v8, v14}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromMaskString(Ljava/lang/String;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->build()Lcom/sshtools/common/sftp/PosixPermissions;

    move-result-object v8

    .line 980
    invoke-virtual {v13, v8}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withPermissions(Lcom/sshtools/common/sftp/PosixPermissions;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 982
    invoke-virtual {v13}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v8

    .line 983
    iget-object v13, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v13, v6, v8}, Lcom/sshtools/common/sftp/AbstractFileSystem;->makeDirectory(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_8

    .line 984
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create directory: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 986
    invoke-direct {v1, v0}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    .line 987
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 993
    :catch_4
    invoke-direct {v1, v7}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    .line 994
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :catch_5
    invoke-direct {v1, v11}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    .line 991
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_c
    :goto_8
    invoke-direct {v1, v6}, Lcom/sshtools/common/scp/ScpCommand;->readFromRemote(Ljava/lang/String;)V

    const/4 v15, 0x0

    .line 1001
    iput v15, v1, Lcom/sshtools/common/scp/ScpCommand;->exitCode:I

    move-object/from16 v6, v18

    goto/16 :goto_0

    :cond_d
    move-object/from16 v18, v6

    const/4 v6, 0x1

    .line 1011
    invoke-virtual {v13, v6}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withType(I)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 1012
    new-instance v8, Lcom/sshtools/common/util/UnsignedInteger64;

    aget-object v12, v18, v6

    invoke-direct {v8, v12}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withSize(Lcom/sshtools/common/util/UnsignedInteger64;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 1016
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 1019
    iget-object v12, v1, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v12}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v12

    .line 1021
    new-instance v14, Lcom/sshtools/common/events/Event;

    const v15, -0xffffba

    invoke-direct {v14, v1, v15, v6}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    .line 1026
    const-string v6, "FILE_NAME"

    invoke-virtual {v14, v6, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v14

    .line 1029
    const-string v15, "OP_STARTED"

    invoke-virtual {v14, v15, v8}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v14

    move-object/from16 v16, v3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object/from16 v19, v10

    .line 1032
    const-string v10, "OP_FINISHED"

    invoke-virtual {v14, v10, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    move-object/from16 v20, v13

    const-wide/16 v21, 0x0

    .line 1037
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1035
    const-string v14, "BYTES_EXPECTED"

    invoke-virtual {v3, v14, v13}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    iget-object v13, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    .line 1040
    invoke-virtual {v13}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v13

    move-object/from16 v23, v11

    .line 1038
    const-string v11, "FILE_FACTORY"

    invoke-virtual {v3, v11, v13}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    .line 1041
    const-string v13, "CONNECTION"

    invoke-virtual {v3, v13, v12}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    .line 1021
    invoke-direct {v1, v3}, Lcom/sshtools/common/scp/ScpCommand;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 1046
    :try_start_4
    iget-object v3, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;
    :try_end_4
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_4 .. :try_end_4} :catch_46
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_45
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_4 .. :try_end_4} :catch_44
    .catchall {:try_start_4 .. :try_end_4} :catchall_13

    :try_start_5
    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_5 .. :try_end_5} :catch_43
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_42
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_5 .. :try_end_5} :catch_41
    .catchall {:try_start_5 .. :try_end_5} :catchall_13

    .line 1048
    :try_start_6
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v24
    :try_end_6
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_6 .. :try_end_6} :catch_40
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3f
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_6 .. :try_end_6} :catch_3e
    .catchall {:try_start_6 .. :try_end_6} :catchall_12

    if-eqz v24, :cond_e

    .line 1049
    :try_start_7
    const-string v2, "Opening file for writing {}"
    :try_end_7
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v24, v7

    :try_start_8
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v7, v0

    move-object v10, v9

    move-object v9, v12

    move-wide/from16 v5, v21

    goto/16 :goto_33

    :catch_7
    move-exception v0

    move-object/from16 v24, v7

    :goto_9
    move-object v7, v0

    move-object v4, v8

    move-object v10, v9

    move-object v8, v12

    move-wide/from16 v5, v21

    goto/16 :goto_36

    :catch_8
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object v10, v9

    move-object v8, v12

    move-wide/from16 v5, v21

    goto/16 :goto_39

    :catch_9
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object v10, v9

    move-object v8, v12

    move-object/from16 v9, v19

    move-wide/from16 v5, v21

    goto/16 :goto_3c

    :cond_e
    move-object/from16 v24, v7

    .line 1052
    :goto_a
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v2

    .line 1053
    iget-object v7, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;
    :try_end_9
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_9 .. :try_end_9} :catch_40
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3f
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_9 .. :try_end_9} :catch_3d
    .catchall {:try_start_9 .. :try_end_9} :catchall_12

    move-object/from16 v25, v9

    :try_start_a
    new-instance v9, Lcom/sshtools/common/util/UnsignedInteger32;
    :try_end_a
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_a .. :try_end_a} :catch_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3b
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_a .. :try_end_a} :catch_3a
    .catchall {:try_start_a .. :try_end_a} :catchall_11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    const-wide/16 v12, 0x1a

    :try_start_b
    invoke-direct {v9, v12, v13}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    .line 1057
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v12

    .line 1053
    invoke-virtual {v7, v3, v9, v12, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFile(Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;Ljava/util/Optional;Lcom/sshtools/common/sftp/SftpFileAttributes;)[B

    move-result-object v2
    :try_end_b
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_b .. :try_end_b} :catch_39
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_38
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_b .. :try_end_b} :catch_37
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    .line 1059
    :try_start_c
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v7
    :try_end_c
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_c .. :try_end_c} :catch_36
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_35
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_c .. :try_end_c} :catch_34
    .catchall {:try_start_c .. :try_end_c} :catchall_f

    if-eqz v7, :cond_f

    .line 1060
    :try_start_d
    const-string v7, "NFS file opened"

    const/4 v9, 0x0

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v7, v12}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_b
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-wide/from16 v5, v21

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    goto/16 :goto_34

    :catch_a
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-wide/from16 v5, v21

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v8, v26

    goto/16 :goto_37

    :catch_b
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-wide/from16 v5, v21

    move-object/from16 v9, v23

    move-object/from16 v10, v25

    move-object/from16 v8, v26

    goto/16 :goto_3a

    :catch_c
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object/from16 v9, v19

    move-wide/from16 v5, v21

    move-object/from16 v10, v25

    move-object/from16 v8, v26

    goto/16 :goto_3d

    .line 1061
    :cond_f
    :goto_b
    :try_start_e
    invoke-direct {v1}, Lcom/sshtools/common/scp/ScpCommand;->writeOk()V

    const/4 v7, 0x1

    .line 1064
    aget-object v9, v18, v7

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 1066
    new-instance v9, Lcom/sshtools/common/events/Event;

    move-wide/from16 v34, v12

    const v12, -0xffffbe

    invoke-direct {v9, v1, v12, v7}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    .line 1071
    invoke-virtual {v9, v6, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7

    .line 1074
    invoke-virtual {v7, v15, v8}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 1077
    invoke-virtual {v7, v10, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7

    .line 1082
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1080
    invoke-virtual {v7, v14, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7

    iget-object v9, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    .line 1085
    invoke-virtual {v9}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v9

    .line 1083
    invoke-virtual {v7, v11, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7

    .line 1086
    invoke-virtual {v7, v4, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7
    :try_end_e
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_e .. :try_end_e} :catch_36
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_35
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_e .. :try_end_e} :catch_34
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    move-object/from16 v9, v26

    move-object/from16 v12, v27

    .line 1089
    :try_start_f
    invoke-virtual {v7, v12, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7

    .line 1066
    invoke-direct {v1, v7}, Lcom/sshtools/common/scp/ScpCommand;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 1094
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v7
    :try_end_f
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_f .. :try_end_f} :catch_33
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_32
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_f .. :try_end_f} :catch_31
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    if-eqz v7, :cond_10

    .line 1095
    :try_start_10
    const-string v7, "Reading from client"

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v7, v14}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_10

    :catchall_2
    move-exception v0

    :goto_c
    move-object v7, v0

    move-wide/from16 v5, v21

    move-object/from16 v10, v25

    goto/16 :goto_34

    :catch_d
    move-exception v0

    :goto_d
    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-wide/from16 v5, v21

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto/16 :goto_37

    :catch_e
    move-exception v0

    :goto_e
    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-wide/from16 v5, v21

    move-object/from16 v9, v23

    move-object/from16 v10, v25

    goto/16 :goto_3a

    :catch_f
    move-exception v0

    :goto_f
    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v19

    move-wide/from16 v5, v21

    move-object/from16 v10, v25

    goto/16 :goto_3d

    .line 1097
    :cond_10
    :goto_10
    :try_start_11
    iget-object v7, v1, Lcom/sshtools/common/scp/ScpCommand;->filePolicy:Lcom/sshtools/common/policy/FileSystemPolicy;
    :try_end_11
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_11 .. :try_end_11} :catch_33
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_32
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_11 .. :try_end_11} :catch_31
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    if-eqz v7, :cond_13

    :try_start_12
    invoke-virtual {v7}, Lcom/sshtools/common/policy/FileSystemPolicy;->hasUploadQuota()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1098
    invoke-interface {v9, v5}, Lcom/sshtools/common/ssh/SshConnection;->containsProperty(Ljava/lang/String;)Z

    move-result v7
    :try_end_12
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_14
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_12 .. :try_end_12} :catch_13
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-nez v7, :cond_11

    .line 1099
    :try_start_13
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v9, v5, v7}, Lcom/sshtools/common/ssh/SshConnection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_13 .. :try_end_13} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_13 .. :try_end_13} :catch_d
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1101
    :cond_11
    :try_start_14
    invoke-interface {v9, v5}, Lcom/sshtools/common/ssh/SshConnection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 1102
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_14
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_14 .. :try_end_14} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_14 .. :try_end_14} :catch_13
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    add-long v13, v13, v34

    move-object/from16 v29, v2

    :try_start_15
    iget-object v2, v1, Lcom/sshtools/common/scp/ScpCommand;->filePolicy:Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v2}, Lcom/sshtools/common/policy/FileSystemPolicy;->getConnectionUploadQuota()J

    move-result-wide v26

    cmp-long v2, v13, v26

    if-gtz v2, :cond_12

    .line 1107
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long v13, v13, v34

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v5, v2}, Lcom/sshtools/common/ssh/SshConnection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 1103
    :cond_12
    invoke-direct {v1, v0}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    .line 1104
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_15
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_11
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :catchall_3
    move-exception v0

    move-object v7, v0

    move-wide/from16 v5, v21

    move-object/from16 v10, v25

    move-object/from16 v2, v29

    goto/16 :goto_34

    :catch_10
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-wide/from16 v5, v21

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v2, v29

    goto/16 :goto_37

    :catch_11
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-wide/from16 v5, v21

    move-object/from16 v9, v23

    move-object/from16 v10, v25

    move-object/from16 v2, v29

    goto/16 :goto_3a

    :catch_12
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v19

    move-wide/from16 v5, v21

    move-object/from16 v10, v25

    move-object/from16 v2, v29

    goto/16 :goto_3d

    :catchall_4
    move-exception v0

    move-object/from16 v29, v2

    goto/16 :goto_c

    :catch_13
    move-exception v0

    move-object/from16 v29, v2

    goto/16 :goto_d

    :catch_14
    move-exception v0

    move-object/from16 v29, v2

    goto/16 :goto_e

    :catch_15
    move-exception v0

    move-object/from16 v29, v2

    goto/16 :goto_f

    :cond_13
    move-object/from16 v29, v2

    .line 1110
    :goto_11
    :try_start_16
    new-instance v2, Lcom/sshtools/common/util/UnsignedInteger64;
    :try_end_16
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_16 .. :try_end_16} :catch_30
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_2f
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_16 .. :try_end_16} :catch_2e
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    move-wide/from16 v13, v21

    :try_start_17
    invoke-direct {v2, v13, v14}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V
    :try_end_17
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_17 .. :try_end_17} :catch_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_2c
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_17 .. :try_end_17} :catch_2b
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    move-object/from16 v30, v2

    :goto_12
    cmp-long v2, v13, v34

    .line 1112
    const-string v7, "BYTES_TRANSFERED"

    if-gez v2, :cond_18

    .line 1113
    :try_start_18
    invoke-virtual {v1}, Lcom/sshtools/common/scp/ScpCommand;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v21, v0

    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->buffer:[B

    sub-long v26, v34, v13

    move-object/from16 v22, v5

    .line 1116
    array-length v5, v0
    :try_end_18
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_18 .. :try_end_18} :catch_24
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_23
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_18 .. :try_end_18} :catch_22
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    move-wide/from16 v36, v13

    int-to-long v13, v5

    cmp-long v5, v26, v13

    if-gez v5, :cond_14

    move-wide/from16 v13, v26

    goto :goto_13

    .line 1117
    :cond_14
    :try_start_19
    array-length v5, v0

    int-to-long v13, v5

    :goto_13
    long-to-int v5, v13

    const/4 v13, 0x0

    .line 1114
    invoke-virtual {v2, v0, v13, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_17

    .line 1124
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2
    :try_end_19
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_19 .. :try_end_19} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_20
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_19 .. :try_end_19} :catch_1f
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    if-eqz v2, :cond_15

    .line 1125
    :try_start_1a
    const-string v2, "Got block of {} bytes"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1a
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_1a .. :try_end_1a} :catch_18
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_17
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1a .. :try_end_1a} :catch_16
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto :goto_14

    :catchall_5
    move-exception v0

    move-object v7, v0

    move-object/from16 v10, v25

    move-object/from16 v2, v29

    goto/16 :goto_22

    :catch_16
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v2, v29

    goto/16 :goto_23

    :catch_17
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v23

    move-object/from16 v10, v25

    move-object/from16 v2, v29

    goto/16 :goto_24

    :catch_18
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v25

    move-object/from16 v2, v29

    goto/16 :goto_25

    .line 1126
    :cond_15
    :goto_14
    :try_start_1b
    iget-object v2, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v5, v1, Lcom/sshtools/common/scp/ScpCommand;->buffer:[B

    const/16 v32, 0x0

    move/from16 v33, v0

    move-object/from16 v28, v2

    move-object/from16 v31, v5

    invoke-virtual/range {v28 .. v33}, Lcom/sshtools/common/sftp/AbstractFileSystem;->writeFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)V
    :try_end_1b
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_1b .. :try_end_1b} :catch_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_20
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1b .. :try_end_1b} :catch_1f
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    move-object/from16 v2, v29

    move-object/from16 v5, v30

    .line 1127
    :try_start_1c
    invoke-static {v5, v0}, Lcom/sshtools/common/util/UnsignedInteger64;->add(Lcom/sshtools/common/util/UnsignedInteger64;I)Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v30
    :try_end_1c
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_1c .. :try_end_1c} :catch_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_1d
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1c .. :try_end_1c} :catch_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    int-to-long v13, v0

    add-long v26, v36, v13

    .line 1130
    :try_start_1d
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v5, Lcom/sshtools/common/scp/ScpPolicy;

    invoke-interface {v0, v5}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/scp/ScpPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/scp/ScpPolicy;->isSCPReadWriteEvents()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1131
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v5, -0xffffbb

    move-wide/from16 v28, v13

    const/4 v13, 0x1

    invoke-direct {v0, v1, v5, v13}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    .line 1135
    invoke-virtual {v0, v12, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1140
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1138
    invoke-virtual {v0, v7, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    const-string v5, "BYTES_WRITTEN"

    .line 1143
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1141
    invoke-virtual {v0, v5, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1144
    invoke-virtual {v0, v6, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1147
    invoke-virtual {v0, v15, v8}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 1150
    invoke-virtual {v0, v10, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1153
    invoke-virtual {v0, v4, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v5, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    .line 1158
    invoke-virtual {v5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v5

    .line 1156
    invoke-virtual {v0, v11, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1131
    invoke-direct {v1, v0}, Lcom/sshtools/common/scp/ScpCommand;->fireEvent(Lcom/sshtools/common/events/Event;)V
    :try_end_1d
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_1d .. :try_end_1d} :catch_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_1a
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1d .. :try_end_1d} :catch_19
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :cond_16
    move-object/from16 v29, v2

    move-object/from16 v0, v21

    move-object/from16 v5, v22

    move-wide/from16 v13, v26

    goto/16 :goto_12

    :catchall_6
    move-exception v0

    move-object v7, v0

    move-object/from16 v10, v25

    move-wide/from16 v5, v26

    goto/16 :goto_34

    :catch_19
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-wide/from16 v5, v26

    goto/16 :goto_37

    :catch_1a
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v23

    move-object/from16 v10, v25

    move-wide/from16 v5, v26

    goto/16 :goto_3a

    :catch_1b
    move-exception v0

    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v25

    move-wide/from16 v5, v26

    goto/16 :goto_3d

    :cond_17
    move-object/from16 v2, v29

    .line 1120
    :try_start_1e
    new-instance v0, Ljava/io/EOFException;

    const-string v4, "Scp received an unexpected EOF during file transfer"

    invoke-direct {v0, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_1e .. :try_end_1e} :catch_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1e .. :try_end_1e} :catch_1c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_16

    :catch_1c
    move-exception v0

    goto :goto_18

    :catch_1d
    move-exception v0

    goto :goto_1a

    :catch_1e
    move-exception v0

    goto :goto_1c

    :catchall_8
    move-exception v0

    goto :goto_15

    :catch_1f
    move-exception v0

    goto :goto_17

    :catch_20
    move-exception v0

    goto :goto_19

    :catch_21
    move-exception v0

    goto :goto_1b

    :catchall_9
    move-exception v0

    move-wide/from16 v36, v13

    :goto_15
    move-object/from16 v2, v29

    :goto_16
    move-object v7, v0

    move-object/from16 v10, v25

    goto/16 :goto_22

    :catch_22
    move-exception v0

    move-wide/from16 v36, v13

    :goto_17
    move-object/from16 v2, v29

    :goto_18
    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto/16 :goto_23

    :catch_23
    move-exception v0

    move-wide/from16 v36, v13

    :goto_19
    move-object/from16 v2, v29

    :goto_1a
    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v23

    move-object/from16 v10, v25

    goto/16 :goto_24

    :catch_24
    move-exception v0

    move-wide/from16 v36, v13

    :goto_1b
    move-object/from16 v2, v29

    :goto_1c
    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v25

    goto/16 :goto_25

    :cond_18
    move-object/from16 v21, v0

    move-object/from16 v22, v5

    move-wide/from16 v36, v13

    move-object/from16 v2, v29

    .line 1162
    :try_start_1f
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v5, -0xffffc0

    const/4 v13, 0x1

    invoke-direct {v0, v1, v5, v13}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    .line 1167
    invoke-virtual {v0, v6, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1170
    invoke-virtual {v0, v15, v8}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 1173
    invoke-virtual {v0, v10, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1178
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1176
    invoke-virtual {v0, v7, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v5, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    .line 1181
    invoke-virtual {v5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v5

    .line 1179
    invoke-virtual {v0, v11, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1182
    invoke-virtual {v0, v4, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1185
    invoke-virtual {v0, v12, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 1162
    invoke-direct {v1, v0}, Lcom/sshtools/common/scp/ScpCommand;->fireEvent(Lcom/sshtools/common/events/Event;)V
    :try_end_1f
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_1f .. :try_end_1f} :catch_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_29
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1f .. :try_end_1f} :catch_28
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    if-eqz v2, :cond_1a

    .line 1208
    :try_start_20
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v15, 0x0

    .line 1209
    new-array v0, v15, [Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_25
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    move-object/from16 v10, v25

    :try_start_21
    invoke-static {v10, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_19
    move-object/from16 v10, v25

    .line 1210
    :goto_1d
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_26
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    goto :goto_1e

    :catchall_a
    move-exception v0

    .line 1213
    iget-object v3, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 1214
    throw v0

    :catch_25
    move-object/from16 v10, v25

    .line 1213
    :catch_26
    :goto_1e
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_1f

    :cond_1a
    move-object/from16 v10, v25

    .line 1218
    :goto_1f
    invoke-direct {v1}, Lcom/sshtools/common/scp/ScpCommand;->waitForResponse()V

    .line 1220
    iget-boolean v0, v1, Lcom/sshtools/common/scp/ScpCommand;->preserveAttributes:Z

    if-eqz v0, :cond_1c

    .line 1222
    invoke-static {}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->create()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v0

    const/16 v17, 0x0

    aget-object v2, v18, v17

    .line 1223
    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromMaskString(Ljava/lang/String;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->build()Lcom/sshtools/common/sftp/PosixPermissions;

    move-result-object v0

    move-object/from16 v2, v20

    .line 1221
    invoke-virtual {v2, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withPermissions(Lcom/sshtools/common/sftp/PosixPermissions;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 1225
    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    .line 1227
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1228
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toPermissionsString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Setting permissions on directory to {}"

    invoke-static {v5, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    :cond_1b
    :try_start_22
    iget-object v2, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v2, v3, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->setFileAttributes(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_27

    goto :goto_20

    .line 1233
    :catch_27
    const-string v0, "Failed to set file permissions."

    invoke-direct {v1, v0}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    goto :goto_21

    .line 1239
    :cond_1c
    :goto_20
    invoke-direct {v1}, Lcom/sshtools/common/scp/ScpCommand;->writeOk()V

    const/4 v15, 0x0

    .line 1240
    iput v15, v1, Lcom/sshtools/common/scp/ScpCommand;->exitCode:I

    :goto_21
    move-object/from16 v9, v19

    goto/16 :goto_40

    :catchall_b
    move-exception v0

    move-object/from16 v10, v25

    move-object v7, v0

    :goto_22
    move-wide/from16 v5, v36

    goto/16 :goto_34

    :catch_28
    move-exception v0

    move-object/from16 v10, v25

    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v24

    :goto_23
    move-wide/from16 v5, v36

    goto/16 :goto_37

    :catch_29
    move-exception v0

    move-object/from16 v10, v25

    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v23

    :goto_24
    move-wide/from16 v5, v36

    goto/16 :goto_3a

    :catch_2a
    move-exception v0

    move-object/from16 v10, v25

    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-object/from16 v9, v19

    :goto_25
    move-wide/from16 v5, v36

    goto/16 :goto_3d

    :catchall_c
    move-exception v0

    goto :goto_26

    :catch_2b
    move-exception v0

    goto :goto_27

    :catch_2c
    move-exception v0

    goto :goto_28

    :catch_2d
    move-exception v0

    goto :goto_29

    :catchall_d
    move-exception v0

    move-wide/from16 v13, v21

    :goto_26
    move-object/from16 v10, v25

    move-object/from16 v2, v29

    goto :goto_2a

    :catch_2e
    move-exception v0

    move-wide/from16 v13, v21

    :goto_27
    move-object/from16 v10, v25

    move-object/from16 v2, v29

    goto :goto_2b

    :catch_2f
    move-exception v0

    move-wide/from16 v13, v21

    :goto_28
    move-object/from16 v10, v25

    move-object/from16 v2, v29

    goto :goto_2c

    :catch_30
    move-exception v0

    move-wide/from16 v13, v21

    :goto_29
    move-object/from16 v10, v25

    move-object/from16 v2, v29

    goto/16 :goto_2d

    :catchall_e
    move-exception v0

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    goto :goto_2a

    :catch_31
    move-exception v0

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    goto :goto_2b

    :catch_32
    move-exception v0

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    goto :goto_2c

    :catch_33
    move-exception v0

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    goto :goto_2d

    :catchall_f
    move-exception v0

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    :goto_2a
    move-object v7, v0

    move-wide v5, v13

    goto/16 :goto_34

    :catch_34
    move-exception v0

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    :goto_2b
    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-wide v5, v13

    move-object/from16 v9, v24

    goto/16 :goto_37

    :catch_35
    move-exception v0

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    :goto_2c
    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-wide v5, v13

    move-object/from16 v9, v23

    goto/16 :goto_3a

    :catch_36
    move-exception v0

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    :goto_2d
    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    move-wide v5, v13

    move-object/from16 v9, v19

    goto/16 :goto_3d

    :catchall_10
    move-exception v0

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    goto/16 :goto_32

    :catch_37
    move-exception v0

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    goto/16 :goto_2f

    :catch_38
    move-exception v0

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    goto/16 :goto_30

    :catch_39
    move-exception v0

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    move-object/from16 v9, v26

    goto/16 :goto_31

    :catchall_11
    move-exception v0

    move-object v9, v12

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    goto/16 :goto_32

    :catch_3a
    move-exception v0

    move-object v9, v12

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    goto :goto_2f

    :catch_3b
    move-exception v0

    move-object v9, v12

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    goto :goto_30

    :catch_3c
    move-exception v0

    move-object v9, v12

    move-wide/from16 v13, v21

    move-object/from16 v10, v25

    goto/16 :goto_31

    :catch_3d
    move-exception v0

    goto :goto_2e

    :catchall_12
    move-exception v0

    move-object v10, v9

    move-object v9, v12

    move-wide/from16 v13, v21

    goto/16 :goto_32

    :catch_3e
    move-exception v0

    move-object/from16 v24, v7

    :goto_2e
    move-object v10, v9

    move-object v9, v12

    move-wide/from16 v13, v21

    goto :goto_2f

    :catch_3f
    move-exception v0

    move-object v10, v9

    move-object v9, v12

    move-wide/from16 v13, v21

    goto :goto_30

    :catch_40
    move-exception v0

    move-object v10, v9

    move-object v9, v12

    move-wide/from16 v13, v21

    goto :goto_31

    :catch_41
    move-exception v0

    move-object/from16 v24, v7

    move-object v10, v9

    move-object v9, v12

    move-wide/from16 v13, v21

    move-object/from16 v3, p1

    :goto_2f
    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    goto/16 :goto_35

    :catch_42
    move-exception v0

    move-object v10, v9

    move-object v9, v12

    move-wide/from16 v13, v21

    move-object/from16 v3, p1

    :goto_30
    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    goto/16 :goto_38

    :catch_43
    move-exception v0

    move-object v10, v9

    move-object v9, v12

    move-wide/from16 v13, v21

    move-object/from16 v3, p1

    :goto_31
    move-object v7, v0

    move-object v4, v8

    move-object v8, v9

    goto/16 :goto_3b

    :catchall_13
    move-exception v0

    move-object v10, v9

    move-object v9, v12

    move-wide/from16 v13, v21

    move-object/from16 v3, p1

    :goto_32
    move-object v7, v0

    move-wide v5, v13

    :goto_33
    const/4 v2, 0x0

    .line 1202
    :goto_34
    :try_start_23
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received exception during transfer to file system. "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    move-object v4, v8

    move-object v8, v9

    .line 1203
    invoke-direct/range {v1 .. v8}, Lcom/sshtools/common/scp/ScpCommand;->fireUploadErrorEvent([BLjava/lang/String;Ljava/util/Date;JLjava/lang/Throwable;Lcom/sshtools/common/ssh/SshConnection;)V

    .line 1204
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_14
    move-exception v0

    goto :goto_3e

    :catch_44
    move-exception v0

    move-object/from16 v24, v7

    move-object v4, v8

    move-object v10, v9

    move-object v8, v12

    move-wide/from16 v13, v21

    move-object/from16 v3, p1

    move-object v7, v0

    :goto_35
    move-wide v5, v13

    :goto_36
    move-object/from16 v9, v24

    const/4 v2, 0x0

    .line 1198
    :goto_37
    invoke-direct {v1, v9}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    .line 1199
    invoke-direct/range {v1 .. v8}, Lcom/sshtools/common/scp/ScpCommand;->fireUploadErrorEvent([BLjava/lang/String;Ljava/util/Date;JLjava/lang/Throwable;Lcom/sshtools/common/ssh/SshConnection;)V

    .line 1200
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_45
    move-exception v0

    move-object v4, v8

    move-object v10, v9

    move-object v8, v12

    move-wide/from16 v13, v21

    move-object/from16 v3, p1

    move-object v7, v0

    :goto_38
    move-wide v5, v13

    :goto_39
    move-object/from16 v9, v23

    const/4 v2, 0x0

    .line 1194
    :goto_3a
    invoke-direct {v1, v9}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    .line 1195
    invoke-direct/range {v1 .. v8}, Lcom/sshtools/common/scp/ScpCommand;->fireUploadErrorEvent([BLjava/lang/String;Ljava/util/Date;JLjava/lang/Throwable;Lcom/sshtools/common/ssh/SshConnection;)V

    .line 1196
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_46
    move-exception v0

    move-object v4, v8

    move-object v10, v9

    move-object v8, v12

    move-wide/from16 v13, v21

    move-object/from16 v3, p1

    move-object v7, v0

    :goto_3b
    move-wide v5, v13

    move-object/from16 v9, v19

    :goto_3c
    const/4 v2, 0x0

    .line 1190
    :goto_3d
    invoke-direct {v1, v9}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    .line 1191
    invoke-direct/range {v1 .. v8}, Lcom/sshtools/common/scp/ScpCommand;->fireUploadErrorEvent([BLjava/lang/String;Ljava/util/Date;JLjava/lang/Throwable;Lcom/sshtools/common/ssh/SshConnection;)V

    .line 1192
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    :goto_3e
    if-eqz v2, :cond_1e

    .line 1208
    :try_start_24
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v15, 0x0

    .line 1209
    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v10, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1210
    :cond_1d
    iget-object v3, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_47
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    goto :goto_3f

    :catchall_15
    move-exception v0

    .line 1213
    iget-object v3, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 1214
    throw v0

    .line 1213
    :catch_47
    :goto_3f
    iget-object v3, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 1216
    :cond_1e
    throw v0

    :cond_1f
    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    move-object/from16 v21, v0

    move-object/from16 v16, v3

    move-object/from16 v22, v5

    move-object/from16 v18, v6

    .line 903
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 904
    const-string v0, "SCP time not currently supported"

    const/4 v15, 0x0

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 906
    :cond_20
    invoke-direct {v1}, Lcom/sshtools/common/scp/ScpCommand;->writeOk()V

    :goto_40
    move-object v0, v10

    move-object v10, v9

    move-object v9, v0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v6, v18

    move-object/from16 v0, v21

    move-object/from16 v5, v22

    goto/16 :goto_0

    :catch_48
    :cond_21
    return-void

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1300
    :goto_0
    invoke-virtual {p0}, Lcom/sshtools/common/scp/ScpCommand;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    if-ltz v2, :cond_0

    .line 1301
    iget-object v3, p0, Lcom/sshtools/common/scp/ScpCommand;->buffer:[B

    add-int/lit8 v4, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    .line 1308
    iget-object v2, p0, Lcom/sshtools/common/scp/ScpCommand;->buffer:[B

    aget-byte v2, v2, v0

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 1322
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sshtools/common/scp/ScpCommand;->buffer:[B

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    .line 1313
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/sshtools/common/scp/ScpCommand;->buffer:[B

    sub-int/2addr v1, v4

    invoke-direct {v2, v5, v4, v1}, Ljava/lang/String;-><init>([BII)V

    .line 1315
    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->buffer:[B

    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_3

    .line 1316
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SCP returned an unexpected error: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1309
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected <NL>"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    :cond_5
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "SCP returned unexpected EOF"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scp([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/sshtools/common/scp/ScpCommand;->directory:Z

    .line 202
    iput-boolean v0, p0, Lcom/sshtools/common/scp/ScpCommand;->from:Z

    .line 203
    iput-boolean v0, p0, Lcom/sshtools/common/scp/ScpCommand;->to:Z

    .line 204
    iput-boolean v0, p0, Lcom/sshtools/common/scp/ScpCommand;->recursive:Z

    .line 205
    iput v0, p0, Lcom/sshtools/common/scp/ScpCommand;->verbosity:I

    move v1, v0

    move v2, v1

    .line 208
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 209
    aget-object v3, p1, v1

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v1, v0

    :goto_2
    const/4 v3, 0x1

    if-ge v1, v2, :cond_a

    .line 217
    aget-object v4, p1, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move v5, v0

    .line 219
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x64

    if-eq v6, v7, :cond_7

    const/16 v7, 0x66

    if-eq v6, v7, :cond_6

    const/16 v7, 0x70

    if-eq v6, v7, :cond_5

    const/16 v7, 0x72

    if-eq v6, v7, :cond_4

    const/16 v7, 0x74

    if-eq v6, v7, :cond_3

    const/16 v7, 0x76

    if-eq v6, v7, :cond_2

    .line 254
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 255
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Unsupported SCP argument {}"

    invoke-static {v7, v6}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 244
    :cond_2
    iget v6, p0, Lcom/sshtools/common/scp/ScpCommand;->verbosity:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/sshtools/common/scp/ScpCommand;->verbosity:I

    goto :goto_4

    .line 224
    :cond_3
    iput-boolean v3, p0, Lcom/sshtools/common/scp/ScpCommand;->to:Z

    goto :goto_4

    .line 239
    :cond_4
    iput-boolean v3, p0, Lcom/sshtools/common/scp/ScpCommand;->recursive:Z

    goto :goto_4

    .line 249
    :cond_5
    iput-boolean v3, p0, Lcom/sshtools/common/scp/ScpCommand;->preserveAttributes:Z

    goto :goto_4

    .line 234
    :cond_6
    iput-boolean v3, p0, Lcom/sshtools/common/scp/ScpCommand;->from:Z

    goto :goto_4

    .line 229
    :cond_7
    iput-boolean v3, p0, Lcom/sshtools/common/scp/ScpCommand;->directory:Z

    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 260
    :cond_a
    :goto_5
    array-length v1, p1

    if-ge v2, v1, :cond_d

    .line 261
    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 262
    aget-object v1, p1, v2

    iput-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    goto :goto_6

    .line 265
    :cond_b
    const-string v4, "\\"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 266
    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    .line 267
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 266
    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    .line 269
    :cond_c
    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    aget-object v4, p1, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 275
    :cond_d
    iget-boolean p1, p0, Lcom/sshtools/common/scp/ScpCommand;->to:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/sshtools/common/scp/ScpCommand;->from:Z

    if-eqz p1, :cond_e

    goto :goto_7

    .line 276
    :cond_e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Must supply either -t or -f."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_f
    :goto_7
    iget-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    if-eqz p1, :cond_19

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    .line 283
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 284
    iget-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    .line 286
    :cond_10
    iget-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 287
    iget-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    .line 290
    :cond_11
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 291
    iget-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Destination is {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_12
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 293
    iget-boolean p1, p0, Lcom/sshtools/common/scp/ScpCommand;->recursive:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Recursive is {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :cond_13
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 295
    iget-boolean p1, p0, Lcom/sshtools/common/scp/ScpCommand;->directory:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Directory is {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :cond_14
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 297
    iget p1, p0, Lcom/sshtools/common/scp/ScpCommand;->verbosity:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Verbosity is {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_15
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 299
    iget-boolean p1, p0, Lcom/sshtools/common/scp/ScpCommand;->from:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Sending files is {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_16
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 301
    iget-boolean p1, p0, Lcom/sshtools/common/scp/ScpCommand;->to:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Receiving files is {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    :cond_17
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 303
    iget-boolean p1, p0, Lcom/sshtools/common/scp/ScpCommand;->preserveAttributes:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Preserve Attributes {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    return-void

    .line 280
    :cond_19
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Destination not supplied."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private waitForResponse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 845
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 846
    const-string v0, "Waiting for response"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/common/scp/ScpCommand;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-nez v0, :cond_2

    .line 851
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    const-string v0, "Got OK"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 862
    invoke-direct {p0}, Lcom/sshtools/common/scp/ScpCommand;->readString()Ljava/lang/String;

    move-result-object v2

    .line 863
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 864
    const-string v3, "Got error \'{}\'"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 867
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 868
    const-string v0, "This is a serious error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 869
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SCP returned an unexpected error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "SCP returned unexpected EOF"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeCommand(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "Sending command \'{}\'"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/common/scp/ScpCommand;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 335
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/sshtools/common/scp/ScpCommand;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    return-void
.end method

.method private writeDirToRemote(Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    const-string v0, ""

    .line 0
    const-string v1, "D"

    const-string v2, "File "

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 531
    :try_start_0
    iget-object v5, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v5, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v5

    .line 533
    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/sshtools/common/scp/ScpCommand;->recursive:Z

    if-nez v6, :cond_0

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is a directory, use recursive mode"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;)V

    return v3

    :cond_0
    const/16 v2, 0x2f

    .line 541
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v2, v6, :cond_1

    add-int/2addr v2, v7

    .line 544
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 547
    :goto_0
    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toMaskString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " 0 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sshtools/common/scp/ScpCommand;->writeCommand(Ljava/lang/String;)V

    .line 548
    invoke-direct {p0}, Lcom/sshtools/common/scp/ScpCommand;->waitForResponse()V

    .line 550
    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v1, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectory(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 557
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v1, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->readDirectory([B)[Lcom/sshtools/common/sftp/SftpFile;

    move-result-object v1

    move v2, v3

    .line 559
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 560
    aget-object v5, v1, v2

    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, v1, v2

    .line 561
    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 562
    aget-object v5, v1, v2

    .line 563
    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 562
    invoke-direct {p0, v5}, Lcom/sshtools/common/scp/ScpCommand;->writeFileToRemote(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 566
    :cond_4
    array-length v1, v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v1, :cond_2

    .line 572
    :catch_0
    :try_start_2
    const-string p1, "E"

    invoke-direct {p0, p1}, Lcom/sshtools/common/scp/ScpCommand;->writeCommand(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0}, Lcom/sshtools/common/scp/ScpCommand;->waitForResponse()V
    :try_end_2
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_6

    .line 583
    :try_start_3
    iget-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {p1, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 588
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {p1, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 585
    :try_start_4
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 586
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 588
    :goto_3
    iget-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 589
    throw p1

    :cond_6
    :goto_4
    return v7

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    .line 579
    :try_start_5
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception p1

    .line 577
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/InvalidHandleException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    if-eqz v4, :cond_8

    .line 583
    :try_start_6
    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v1, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 588
    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_8

    :catchall_2
    move-exception p1

    goto :goto_7

    :catch_4
    move-exception v1

    .line 585
    :try_start_7
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 586
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    .line 588
    :goto_7
    iget-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 589
    throw p1

    .line 591
    :cond_8
    :goto_8
    throw p1
.end method

.method private writeError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, p1, v0}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;Z)V

    return-void
.end method

.method private writeError(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 366
    iput v0, p0, Lcom/sshtools/common/scp/ScpCommand;->exitCode:I

    .line 368
    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SessionChannelServer;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 370
    const-string p2, "SCP received error \'{}\' but session is closed so cannot inform client"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 372
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Sending error message \'{}\' to client (serious={})"

    invoke-static {v2, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/sshtools/common/scp/ScpCommand;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 376
    invoke-virtual {p0}, Lcom/sshtools/common/scp/ScpCommand;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 378
    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 379
    invoke-virtual {p0}, Lcom/sshtools/common/scp/ScpCommand;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    return-void
.end method

.method private writeFileToRemote(Ljava/lang/String;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/sftp/InvalidHandleException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 598
    const-string v2, "HANDLE"

    const-string v9, ""

    iget-object v3, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v3, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v3

    .line 600
    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v4

    const/4 v10, 0x0

    if-eqz v4, :cond_1

    .line 601
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/common/scp/ScpCommand;->writeDirToRemote(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v13, v10

    goto/16 :goto_f

    .line 604
    :cond_1
    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v4, 0x2f

    .line 606
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    add-int/2addr v4, v6

    .line 609
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v0

    .line 612
    :goto_0
    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toMaskString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "C"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sshtools/common/scp/ScpCommand;->writeCommand(Ljava/lang/String;)V

    .line 615
    invoke-direct {v1}, Lcom/sshtools/common/scp/ScpCommand;->waitForResponse()V

    .line 617
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 619
    iget-object v5, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v5, v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 621
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 622
    const-string v0, "Opening file {}"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    :cond_3
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v7, -0xffffb9

    invoke-direct {v0, v1, v7, v6}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    .line 629
    const-string v7, "FILE_NAME"

    invoke-virtual {v0, v7, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 632
    const-string v8, "OP_STARTED"

    invoke-virtual {v0, v8, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 635
    const-string v12, "OP_FINISHED"

    invoke-virtual {v0, v12, v11}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 640
    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 638
    const-string v13, "BYTES_EXPECTED"

    invoke-virtual {v0, v13, v11}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v11, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    .line 643
    invoke-virtual {v11}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v11

    .line 641
    const-string v14, "FILE_FACTORY"

    invoke-virtual {v0, v14, v11}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v11, v1, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    .line 646
    invoke-interface {v11}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v11

    .line 644
    const-string v15, "CONNECTION"

    invoke-virtual {v0, v15, v11}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 624
    invoke-direct {v1, v0}, Lcom/sshtools/common/scp/ScpCommand;->fireEvent(Lcom/sshtools/common/events/Event;)V

    move-object/from16 p1, v12

    .line 651
    :try_start_0
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    new-instance v11, Lcom/sshtools/common/util/UnsignedInteger32;

    move-object/from16 v18, v7

    const-wide/16 v6, 0x1

    invoke-direct {v11, v6, v7}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    .line 653
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6

    .line 651
    invoke-virtual {v0, v5, v11, v6, v3}, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFile(Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;Ljava/util/Optional;Lcom/sshtools/common/sftp/SftpFileAttributes;)[B

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 656
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-eqz v0, :cond_4

    .line 657
    :try_start_2
    const-string v0, "Sending file"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v0

    move-object v2, v11

    const-wide/16 v11, 0x0

    goto/16 :goto_b

    .line 659
    :cond_4
    :goto_1
    :try_start_3
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v6, -0xffffbd

    const/4 v12, 0x1

    invoke-direct {v0, v1, v6, v12}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    move-object/from16 v6, v18

    .line 664
    invoke-virtual {v0, v6, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 667
    invoke-virtual {v0, v8, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    move-object/from16 v12, p1

    .line 670
    invoke-virtual {v0, v12, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 675
    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 673
    invoke-virtual {v0, v13, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v7, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    .line 678
    invoke-virtual {v7}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v7

    .line 676
    invoke-virtual {v0, v14, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 679
    invoke-virtual {v0, v2, v11}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v7, v1, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    .line 684
    invoke-interface {v7}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v7

    .line 682
    invoke-virtual {v0, v15, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 659
    invoke-direct {v1, v0}, Lcom/sshtools/common/scp/ScpCommand;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 686
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger64;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object/from16 v20, v11

    const-wide/16 v10, 0x0

    :try_start_4
    invoke-direct {v0, v10, v11}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v21, v0

    .line 690
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    cmp-long v0, v10, v16

    const-string v7, "BYTES_TRANSFERED"

    if-gez v0, :cond_8

    .line 694
    :try_start_6
    sget v0, Lcom/sshtools/common/scp/ScpCommand;->BUFFER_SIZE:I

    new-array v13, v0, [B

    move/from16 v24, v0

    .line 695
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    const/16 v23, 0x0

    move-object/from16 v19, v0

    move-object/from16 v22, v13

    invoke-virtual/range {v19 .. v24}, Lcom/sshtools/common/sftp/AbstractFileSystem;->readFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)I

    move-result v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v16, v3

    move-object/from16 v3, v21

    if-gez v0, :cond_5

    goto/16 :goto_4

    .line 699
    :cond_5
    :try_start_7
    invoke-static {v3, v0}, Lcom/sshtools/common/util/UnsignedInteger64;->add(Lcom/sshtools/common/util/UnsignedInteger64;I)Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v21
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-wide/from16 v17, v10

    int-to-long v10, v0

    add-long v17, v17, v10

    .line 701
    :try_start_8
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_6

    .line 702
    :try_start_9
    const-string v3, "Writing block of {} bytes"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-wide/from16 v22, v10

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-wide/from16 v11, v17

    move-object/from16 v2, v20

    goto/16 :goto_b

    :cond_6
    move-wide/from16 v22, v10

    .line 703
    :goto_3
    :try_start_a
    invoke-virtual {v1}, Lcom/sshtools/common/scp/ScpCommand;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v3, v13, v10, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v3, v20

    .line 706
    :try_start_b
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v10, Lcom/sshtools/common/scp/ScpPolicy;

    invoke-interface {v0, v10}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/scp/ScpPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/scp/ScpPolicy;->isSCPReadWriteEvents()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 707
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v10, -0xffffbc

    const/4 v11, 0x1

    invoke-direct {v0, v1, v10, v11}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    iget-object v10, v1, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    .line 713
    invoke-interface {v10}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v10

    .line 711
    invoke-virtual {v0, v15, v10}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 716
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 714
    invoke-virtual {v0, v7, v10}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    const-string v10, "BYTES_READ"

    .line 719
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 717
    invoke-virtual {v0, v10, v11}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 720
    invoke-virtual {v0, v6, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 723
    invoke-virtual {v0, v8, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 726
    invoke-virtual {v0, v12, v10}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 729
    invoke-virtual {v0, v2, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v10, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    .line 734
    invoke-virtual {v10}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v10

    .line 732
    invoke-virtual {v0, v14, v10}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 707
    invoke-direct {v1, v0}, Lcom/sshtools/common/scp/ScpCommand;->fireEvent(Lcom/sshtools/common/events/Event;)V
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_7
    move-object/from16 v20, v3

    move-object/from16 v3, v16

    move-wide/from16 v10, v17

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-object/from16 v16, v3

    :catch_1
    move-wide/from16 v17, v10

    :catch_2
    move-object/from16 v3, v20

    .line 739
    :catch_3
    :try_start_c
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 740
    const-string v0, "End of file - finishing transfer"

    const/4 v13, 0x0

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v0, v10}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    move-object/from16 v16, v3

    :goto_4
    move-wide/from16 v17, v10

    move-object/from16 v3, v20

    .line 747
    :cond_9
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v10

    cmp-long v0, v17, v10

    if-ltz v0, :cond_b

    .line 753
    new-instance v0, Lcom/sshtools/common/events/Event;

    const v10, -0xffffbf

    const/4 v11, 0x1

    invoke-direct {v0, v1, v10, v11}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    .line 758
    invoke-virtual {v0, v6, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 761
    invoke-virtual {v0, v8, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 764
    invoke-virtual {v0, v12, v6}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 769
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 767
    invoke-virtual {v0, v7, v6}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v6, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    .line 772
    invoke-virtual {v6}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v6

    .line 770
    invoke-virtual {v0, v14, v6}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 773
    invoke-virtual {v0, v2, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    iget-object v2, v1, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    .line 778
    invoke-interface {v2}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v2

    .line 776
    invoke-virtual {v0, v15, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v0

    .line 753
    invoke-direct {v1, v0}, Lcom/sshtools/common/scp/ScpCommand;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 780
    invoke-direct {v1}, Lcom/sshtools/common/scp/ScpCommand;->writeOk()V

    .line 782
    invoke-direct {v1}, Lcom/sshtools/common/scp/ScpCommand;->waitForResponse()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v3, :cond_e

    .line 793
    :try_start_d
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 798
    :cond_a
    :goto_6
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto/16 :goto_e

    :catchall_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    .line 795
    :try_start_e
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v13, 0x0

    .line 796
    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v9, v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_6

    .line 798
    :goto_7
    iget-object v2, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v2, v3}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 799
    throw v0

    .line 748
    :cond_b
    :try_start_f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "File transfer terminated abnormally."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_9

    :catchall_5
    move-exception v0

    move-wide/from16 v17, v10

    :goto_8
    move-object/from16 v3, v20

    :goto_9
    move-object v7, v0

    move-object v2, v3

    move-wide/from16 v11, v17

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object/from16 v3, v20

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v3, v11

    const-wide/16 v10, 0x0

    :goto_a
    move-object v7, v0

    move-object v2, v3

    move-wide v11, v10

    goto :goto_b

    :catchall_8
    move-exception v0

    const-wide/16 v10, 0x0

    move-object v7, v0

    move-wide v11, v10

    const/4 v2, 0x0

    .line 785
    :goto_b
    :try_start_10
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 786
    const-string v0, "Write to remote failed"

    const/4 v13, 0x0

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v0, v7, v3}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 788
    :cond_c
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    .line 789
    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v8

    move-object v3, v5

    move-wide v5, v11

    .line 788
    invoke-direct/range {v1 .. v8}, Lcom/sshtools/common/scp/ScpCommand;->fireDownloadErrorEvent([BLjava/lang/String;Ljava/util/Date;JLjava/lang/Throwable;Lcom/sshtools/common/ssh/SshConnection;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    if-eqz v2, :cond_e

    .line 793
    :try_start_11
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 798
    :cond_d
    :goto_c
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_e

    :catchall_9
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    .line 795
    :try_start_12
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v13, 0x0

    .line 796
    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v9, v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto :goto_c

    .line 798
    :goto_d
    iget-object v3, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 799
    throw v0

    :cond_e
    :goto_e
    const/4 v13, 0x0

    .line 807
    :goto_f
    iput v13, v1, Lcom/sshtools/common/scp/ScpCommand;->exitCode:I

    return-void

    :catchall_a
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_10

    .line 793
    :try_start_13
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 798
    :cond_f
    :goto_10
    iget-object v0, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_12

    :catchall_b
    move-exception v0

    goto :goto_11

    :catch_6
    move-exception v0

    .line 795
    :try_start_14
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v13, 0x0

    .line 796
    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v9, v0, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_10

    .line 798
    :goto_11
    iget-object v3, v1, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 799
    throw v0

    .line 802
    :cond_10
    :goto_12
    throw v3

    .line 804
    :cond_11
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not valid for SCP."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeOk()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "Sending client OK command"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/common/scp/ScpCommand;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method protected closeSession()V
    .locals 2

    .line 518
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 519
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Closing session"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannelServer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannelServer;->close()V

    :cond_1
    return-void
.end method

.method public createProcess([Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 125
    invoke-static {p1}, Lcom/sshtools/common/util/Utils;->mergeToArgsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 127
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->currentDirectory:Ljava/lang/String;

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Creating SCP with command line \'{}\' and current working directory \'{}\'"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_0
    :try_start_0
    new-instance v0, Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    .line 133
    invoke-interface {v1}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v1

    const-string v2, "scp"

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    .line 136
    array-length v0, p1

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sshtools/common/scp/ScpCommand;->scp([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    .line 143
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "SCP command could not be processed: {}"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-string v0, "Failed to start command: {}"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getExitCode()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/sshtools/common/scp/ScpCommand;->exitCode:I

    return v0
.end method

.method public kill()V
    .locals 2

    .line 158
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 159
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Killing SCP command"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/scp/ScpCommand;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/common/scp/ScpCommand;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 180
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 181
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Adding SCP command to executor service"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/scp/ScpCommand$1;

    iget-object v2, p0, Lcom/sshtools/common/scp/ScpCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v2}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sshtools/common/scp/ScpCommand$1;-><init>(Lcom/sshtools/common/scp/ScpCommand;Lcom/sshtools/common/ssh/SshConnection;)V

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/SshConnection;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 15

    .line 391
    const-string v0, " not found"

    const-string v1, "/"

    const-string v2, ""

    .line 0
    const-string v3, "glob:"

    .line 391
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 392
    const-string v4, "SCP thread has started"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v4, 0x1

    .line 395
    :try_start_0
    iget-boolean v6, p0, Lcom/sshtools/common/scp/ScpCommand;->from:Z

    if-eqz v6, :cond_13

    .line 396
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 397
    const-string v6, "SCP is sending files to client"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 400
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sshtools/common/scp/ScpCommand;->waitForResponse()V

    .line 402
    iget-object v6, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    .line 403
    iget-object v7, p0, Lcom/sshtools/common/scp/ScpCommand;->currentDirectory:Ljava/lang/String;

    .line 404
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v7, v2

    :cond_2
    const/16 v8, 0x2f

    .line 407
    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    if-lez v8, :cond_3

    .line 411
    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_3
    add-int/2addr v8, v4

    .line 414
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 417
    :cond_4
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 418
    const-string v8, "Looking for matches in {} for {}"

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    :cond_5
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v8, 0x0

    .line 431
    :try_start_2
    iget-object v9, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v9, v7}, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectory(Ljava/lang/String;)[B

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move v9, v5

    move v10, v9

    :cond_6
    :goto_0
    if-nez v9, :cond_b

    .line 435
    :try_start_3
    iget-object v11, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v11, v8}, Lcom/sshtools/common/sftp/AbstractFileSystem;->readDirectory([B)[Lcom/sshtools/common/sftp/SftpFile;

    move-result-object v11

    move v12, v5

    .line 437
    :goto_1
    array-length v13, v11

    if-ge v12, v13, :cond_6

    .line 438
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 439
    const-string v13, "Testing for match against {}"

    aget-object v14, v11, v12

    invoke-virtual {v14}, Lcom/sshtools/common/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    :cond_7
    aget-object v13, v11, v12

    invoke-virtual {v13}, Lcom/sshtools/common/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    aget-object v13, v11, v12

    .line 442
    invoke-virtual {v13}, Lcom/sshtools/common/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 444
    aget-object v13, v11, v12

    invoke-virtual {v13}, Lcom/sshtools/common/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v13

    new-array v14, v5, [Ljava/lang/String;

    invoke-static {v13, v14}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 445
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 446
    const-string v13, "Matched"

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 448
    :cond_8
    :try_start_4
    aget-object v10, v11, v12

    .line 449
    invoke-virtual {v10}, Lcom/sshtools/common/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 448
    invoke-direct {p0, v10}, Lcom/sshtools/common/scp/ScpCommand;->writeFileToRemote(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v10, v4

    goto :goto_2

    :catchall_0
    move-exception v1

    move v10, v4

    goto :goto_6

    :catch_0
    move v10, v4

    goto :goto_3

    .line 451
    :cond_9
    :try_start_5
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 452
    const-string v13, "No match"

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_a
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    goto :goto_6

    :catch_1
    :goto_3
    move v9, v4

    goto/16 :goto_0

    :cond_b
    if-eqz v8, :cond_c

    .line 464
    :try_start_6
    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v1, v8}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_6
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 467
    :try_start_7
    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    :goto_4
    invoke-virtual {v1, v8}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_5

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v1, v8}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 468
    throw v0

    .line 467
    :catch_2
    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    goto :goto_4

    :cond_c
    :goto_5
    if-eqz v9, :cond_15

    if-nez v10, :cond_15

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto/16 :goto_9

    :catchall_3
    move-exception v1

    move v9, v5

    move v10, v9

    :goto_6
    if-eqz v8, :cond_d

    .line 464
    :try_start_8
    iget-object v3, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v3, v8}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_8
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 467
    :try_start_9
    iget-object v3, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    :goto_7
    invoke-virtual {v3, v8}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_8

    :catchall_4
    move-exception v0

    iget-object v1, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v1, v8}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 468
    throw v0

    .line 467
    :catch_3
    iget-object v3, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    goto :goto_7

    :cond_d
    :goto_8
    if-eqz v9, :cond_e

    if-nez v10, :cond_e

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;Z)V

    .line 474
    :cond_e
    throw v1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catch_4
    move-exception v0

    .line 489
    :try_start_a
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 490
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 491
    :cond_f
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;Z)V

    goto :goto_9

    :catch_5
    move-exception v0

    .line 485
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 486
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 487
    :cond_10
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/InvalidHandleException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;Z)V

    goto :goto_9

    :catch_6
    move-exception v0

    .line 481
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 482
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 483
    :cond_11
    invoke-virtual {v0}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;Z)V

    goto :goto_9

    :catch_7
    move-exception v0

    .line 477
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 478
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 479
    :cond_12
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/sshtools/common/scp/ScpCommand;->writeError(Ljava/lang/String;Z)V

    goto :goto_9

    .line 494
    :cond_13
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 495
    const-string v0, "SCP is receiving files from the client"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    :cond_14
    iget-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->destination:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sshtools/common/scp/ScpCommand;->readFromRemote(Ljava/lang/String;)V

    .line 499
    :cond_15
    :goto_9
    iput v5, p0, Lcom/sshtools/common/scp/ScpCommand;->exitCode:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    .line 501
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 502
    const-string v1, "SCP thread failed"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 503
    :cond_16
    iput v4, p0, Lcom/sshtools/common/scp/ScpCommand;->exitCode:I

    .line 506
    :goto_a
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 507
    const-string v0, "SCP thread is exiting"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :cond_17
    iget-object v0, p0, Lcom/sshtools/common/scp/ScpCommand;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFilesystem()V

    .line 512
    invoke-virtual {p0}, Lcom/sshtools/common/scp/ScpCommand;->closeSession()V

    return-void
.end method

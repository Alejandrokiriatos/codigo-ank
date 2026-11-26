.class Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteFileOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 1367
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 1368
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 23

    move-object/from16 v1, p0

    .line 1378
    const-string v2, "OP_FINISHED"

    const-string v3, "OP_STARTED"

    const-string v4, "FILE_NAME"

    const-string v5, "BYTES_TRANSFERED"

    const-string v6, "CONNECTION"

    const-string v0, "uploadQuota"

    new-instance v7, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v8, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->msg:[B

    invoke-direct {v7, v8}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v8, 0x1

    .line 1380
    invoke-virtual {v7, v8, v9}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 1384
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    const/4 v12, -0x1

    .line 1387
    :try_start_0
    invoke-virtual {v7}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v14
    :try_end_0
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v12, v14

    .line 1388
    :try_start_1
    invoke-virtual {v7}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v15

    .line 1390
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    .line 1392
    iget-object v13, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v13}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetopenFileHandles(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sshtools/common/sftp/TransferEvent;
    :try_end_1
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1394
    :try_start_2
    invoke-virtual {v7}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v16
    :try_end_2
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v20, 0x1

    .line 1395
    :try_start_3
    invoke-virtual {v7}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v10

    long-to-int v10, v10

    .line 1397
    iget-object v11, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v11}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetfilePolicy(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/policy/FileSystemPolicy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sshtools/common/policy/FileSystemPolicy;->hasUploadQuota()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1398
    iget-object v11, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v11, v0}, Lcom/sshtools/common/ssh/SshConnection;->containsProperty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1399
    iget-object v11, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->con:Lcom/sshtools/common/ssh/SshConnection;

    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v11, v0, v14}, Lcom/sshtools/common/ssh/SshConnection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1401
    :cond_0
    iget-object v11, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v11, v0}, Lcom/sshtools/common/ssh/SshConnection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 1402
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v19, v15

    int-to-long v14, v10

    add-long v17, v17, v14

    iget-object v9, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v9}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetfilePolicy(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/policy/FileSystemPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sshtools/common/policy/FileSystemPolicy;->getConnectionUploadQuota()J

    move-result-wide v21

    cmp-long v9, v17, v21

    if-lez v9, :cond_1

    .line 1403
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const-string v9, "User upload quota exceeded"

    const/16 v10, 0xf

    invoke-virtual {v0, v12, v10, v9}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_3
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1473
    invoke-virtual {v7}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    .line 1407
    :cond_1
    :try_start_4
    iget-object v9, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    add-long v17, v17, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v0, v11}, Lcom/sshtools/common/ssh/SshConnection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    move-object/from16 v19, v15

    .line 1411
    :goto_0
    :try_start_5
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v14

    invoke-virtual {v7}, Lcom/sshtools/common/util/ByteArrayReader;->array()[B

    move-result-object v17

    invoke-virtual {v7}, Lcom/sshtools/common/util/ByteArrayReader;->getPosition()I

    move-result v18

    move-object/from16 v15, v19

    move/from16 v19, v10

    invoke-virtual/range {v14 .. v19}, Lcom/sshtools/common/sftp/AbstractFileSystem;->writeFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)V

    move/from16 v0, v19

    .line 1414
    iget-wide v9, v13, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    int-to-long v14, v0

    add-long/2addr v9, v14

    iput-wide v9, v13, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    .line 1417
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->access$500(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v9, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v0, v9}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->isSFTPReadWriteEvents()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1418
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    new-instance v10, Lcom/sshtools/common/events/Event;

    iget-object v11, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    iget-boolean v9, v13, Lcom/sshtools/common/sftp/TransferEvent;->error:Z
    :try_end_5
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    xor-int/lit8 v9, v9, 0x1

    move-object/from16 v17, v7

    const v7, -0xffff9f

    :try_start_6
    invoke-direct {v10, v11, v7, v9}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    iget-object v7, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1422
    invoke-virtual {v10, v6, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7

    iget-wide v9, v13, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    .line 1427
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1425
    invoke-virtual {v7, v5, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7

    const-string v9, "BYTES_WRITTEN"

    .line 1430
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1428
    invoke-virtual {v7, v9, v10}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7

    iget-object v9, v13, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 1431
    invoke-virtual {v7, v4, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7

    .line 1434
    invoke-virtual {v7, v3, v8}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 1437
    invoke-virtual {v7, v2, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v7

    .line 1418
    invoke-virtual {v0, v7}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    goto :goto_1

    :cond_3
    move-object/from16 v17, v7

    .line 1441
    :goto_1
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const-string v7, "The write completed successfully"

    const/4 v9, 0x0

    invoke-virtual {v0, v12, v9, v7}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_6
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v17, v7

    .line 1444
    :goto_2
    :try_start_7
    iget-object v7, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getStatus()I

    move-result v9

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v12, v9, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_7
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1473
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :catch_4
    move-exception v0

    goto/16 :goto_8

    :catch_5
    move-exception v0

    goto/16 :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v17, v7

    goto :goto_4

    :catch_7
    move-exception v0

    move-object/from16 v17, v7

    goto :goto_6

    :catch_8
    move-exception v0

    move-object/from16 v17, v7

    goto/16 :goto_8

    :catch_9
    move-exception v0

    move-object/from16 v17, v7

    goto/16 :goto_a

    :catch_a
    move-exception v0

    move-object/from16 v17, v7

    const/16 v20, 0x1

    goto :goto_4

    :catch_b
    move-exception v0

    move-object/from16 v17, v7

    const/16 v20, 0x1

    goto :goto_6

    :catch_c
    move-exception v0

    move-object/from16 v17, v7

    const/16 v20, 0x1

    goto :goto_8

    :catch_d
    move-exception v0

    move-object/from16 v17, v7

    const/16 v20, 0x1

    goto :goto_a

    :catch_e
    move-exception v0

    move-object/from16 v17, v7

    const/16 v20, 0x1

    goto :goto_5

    :catch_f
    move-exception v0

    move-object/from16 v17, v7

    const/16 v20, 0x1

    goto :goto_7

    :catch_10
    move-exception v0

    move-object/from16 v17, v7

    const/16 v20, 0x1

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object/from16 v17, v7

    goto/16 :goto_c

    :catch_11
    move-exception v0

    move-object/from16 v17, v7

    const/16 v20, 0x1

    const/4 v13, 0x0

    :goto_4
    if-eqz v13, :cond_4

    move/from16 v7, v20

    .line 1468
    :try_start_8
    iput-boolean v7, v13, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    .line 1469
    iput-object v0, v13, Lcom/sshtools/common/sftp/TransferEvent;->ex:Ljava/lang/Throwable;

    .line 1471
    :cond_4
    iget-object v7, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x4

    invoke-virtual {v7, v12, v9, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_b

    :catch_12
    move-exception v0

    move-object/from16 v17, v7

    :goto_5
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_5

    const/4 v7, 0x1

    .line 1462
    iput-boolean v7, v13, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    .line 1463
    iput-object v0, v13, Lcom/sshtools/common/sftp/TransferEvent;->ex:Ljava/lang/Throwable;

    .line 1465
    :cond_5
    iget-object v7, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    invoke-virtual {v7, v12, v9, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_b

    :catch_13
    move-exception v0

    move-object/from16 v17, v7

    :goto_7
    const/4 v13, 0x0

    :goto_8
    if-eqz v13, :cond_6

    const/4 v7, 0x1

    .line 1456
    iput-boolean v7, v13, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    .line 1457
    iput-object v0, v13, Lcom/sshtools/common/sftp/TransferEvent;->ex:Ljava/lang/Throwable;

    .line 1459
    :cond_6
    iget-object v7, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x3

    invoke-virtual {v7, v12, v9, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_b

    :catch_14
    move-exception v0

    move-object/from16 v17, v7

    :goto_9
    const/4 v13, 0x0

    :goto_a
    if-eqz v13, :cond_7

    const/4 v7, 0x1

    .line 1450
    iput-boolean v7, v13, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    .line 1451
    iput-object v0, v13, Lcom/sshtools/common/sftp/TransferEvent;->ex:Ljava/lang/Throwable;

    .line 1453
    :cond_7
    iget-object v7, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/InvalidHandleException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x4

    invoke-virtual {v7, v12, v9, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1473
    :goto_b
    invoke-virtual/range {v17 .. v17}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    if-eqz v13, :cond_8

    .line 1476
    iget-boolean v0, v13, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->access$600(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v7, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v0, v7}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->isSFTPReadWriteEvents()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1477
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    new-instance v7, Lcom/sshtools/common/events/Event;

    iget-object v9, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    iget-boolean v10, v13, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    const/16 v20, 0x1

    xor-int/lit8 v10, v10, 0x1

    const v11, -0xffff9f

    invoke-direct {v7, v9, v11, v10}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    iget-object v9, v1, Lcom/sshtools/common/sftp/SftpSubsystem$WriteFileOperation;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1481
    invoke-virtual {v7, v6, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v6

    iget-wide v9, v13, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    .line 1486
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1484
    invoke-virtual {v6, v5, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v5

    iget-object v6, v13, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 1487
    invoke-virtual {v5, v4, v6}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v4

    .line 1490
    invoke-virtual {v4, v3, v8}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1493
    invoke-virtual {v3, v2, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    const-string v3, "THROWABLE"

    iget-object v4, v13, Lcom/sshtools/common/sftp/TransferEvent;->ex:Ljava/lang/Throwable;

    .line 1496
    invoke-virtual {v2, v3, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    .line 1477
    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    :cond_8
    return-void

    :catchall_1
    move-exception v0

    .line 1473
    :goto_c
    invoke-virtual/range {v17 .. v17}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 1474
    throw v0
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 1373
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->WRITE_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

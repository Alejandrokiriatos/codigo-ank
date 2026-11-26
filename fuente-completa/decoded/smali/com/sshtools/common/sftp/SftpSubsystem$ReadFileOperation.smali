.class Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadFileOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 1197
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 1198
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 25

    move-object/from16 v1, p0

    .line 1209
    const-string v2, "OP_FINISHED"

    const-string v3, "OP_STARTED"

    const-string v4, "FILE_NAME"

    const-string v5, "BYTES_TRANSFERED"

    const-string v6, "CONNECTION"

    .line 0
    const-string v0, "Read "

    const-string v7, "Remote client wants "

    .line 1209
    new-instance v8, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v9, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->msg:[B

    invoke-direct {v8, v9}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v9, 0x1

    .line 1211
    invoke-virtual {v8, v9, v10}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 1215
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 1220
    :try_start_0
    invoke-virtual {v8}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v14
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_18
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    long-to-int v14, v14

    .line 1221
    :try_start_1
    invoke-virtual {v8}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v15

    .line 1222
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v15}, Ljava/lang/String;-><init>([B)V

    .line 1224
    iget-object v10, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v10}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetopenFileHandles(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sshtools/common/sftp/TransferEvent;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1226
    :try_start_2
    invoke-virtual {v8}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v18

    .line 1227
    invoke-virtual {v8}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v12

    long-to-int v12, v12

    .line 1230
    new-instance v13, Lcom/sshtools/common/ssh/Packet;

    add-int/lit8 v11, v12, 0xd

    invoke-direct {v13, v11}, Lcom/sshtools/common/ssh/Packet;-><init>(I)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/16 v11, 0x67

    .line 1232
    :try_start_3
    invoke-virtual {v13, v11}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 1233
    invoke-virtual {v13, v14}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 1236
    invoke-virtual {v13}, Lcom/sshtools/common/ssh/Packet;->position()I

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v22, v8

    const/4 v8, 0x0

    .line 1237
    :try_start_4
    invoke-virtual {v13, v8}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 1239
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v16, :cond_0

    .line 1240
    :try_start_5
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v23, v11

    .line 1241
    invoke-virtual/range {v18 .. v18}, Lcom/sshtools/common/util/UnsignedInteger64;->toString()Ljava/lang/String;

    move-result-object v11

    move/from16 v21, v12

    iget-object v12, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 1242
    invoke-static {v12}, Lcom/sshtools/common/sftp/SftpSubsystem;->access$100(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;

    move-result-object v12

    invoke-interface {v12}, Lcom/sshtools/common/ssh/SessionChannel;->getLocalWindow()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v12

    move-object/from16 v17, v15

    iget-object v15, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 1243
    invoke-static {v15}, Lcom/sshtools/common/sftp/SftpSubsystem;->access$200(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;

    move-result-object v15

    invoke-interface {v15}, Lcom/sshtools/common/ssh/SessionChannel;->getRemoteWindow()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v24, v2

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " bytes from file at offset "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " localwindow="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " remotewindow="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    .line 1240
    invoke-static {v2, v8}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v24, v2

    goto/16 :goto_5

    :cond_0
    move-object/from16 v24, v2

    move/from16 v23, v11

    move/from16 v21, v12

    move-object/from16 v17, v15

    .line 1246
    :goto_0
    iget-object v2, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v16

    invoke-virtual {v13}, Lcom/sshtools/common/ssh/Packet;->array()[B

    move-result-object v19

    .line 1247
    invoke-virtual {v13}, Lcom/sshtools/common/ssh/Packet;->position()I

    move-result v20

    .line 1246
    invoke-virtual/range {v16 .. v21}, Lcom/sshtools/common/sftp/AbstractFileSystem;->readFile([BLcom/sshtools/common/util/UnsignedInteger64;[BII)I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    .line 1250
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1251
    const-string v0, "Got EOF from filesystem"

    const/4 v7, 0x0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v11, 0x1

    .line 1253
    iput-boolean v11, v10, Lcom/sshtools/common/sftp/TransferEvent;->hasReachedEOF:Z

    .line 1254
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const-string v2, "File is EOF"

    invoke-virtual {v0, v14, v11, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1301
    :try_start_7
    invoke-virtual {v13}, Lcom/sshtools/common/ssh/Packet;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_1

    :catch_0
    move-exception v0

    move v13, v14

    move-object/from16 v8, v24

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move v13, v14

    move-object/from16 v8, v24

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move v13, v14

    move-object/from16 v8, v24

    goto/16 :goto_f

    :catch_3
    move-exception v0

    move v13, v14

    move-object/from16 v8, v24

    goto/16 :goto_11

    .line 1335
    :catch_4
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :cond_2
    move/from16 v7, v23

    .line 1257
    :try_start_8
    iget-wide v11, v10, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    move-wide/from16 v16, v11

    int-to-long v11, v2

    move-wide/from16 v18, v11

    add-long v11, v16, v18

    iput-wide v11, v10, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    .line 1259
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " bytes from filesystem"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1263
    :cond_3
    invoke-virtual {v13, v7}, Lcom/sshtools/common/ssh/Packet;->setPosition(I)I

    move-result v0

    .line 1264
    invoke-virtual {v13, v2}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    add-int/2addr v0, v2

    .line 1265
    invoke-virtual {v13, v0}, Lcom/sshtools/common/ssh/Packet;->setPosition(I)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1268
    :try_start_9
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->access$300(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v2, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v0, v2}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->isSFTPReadWriteEvents()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1269
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    new-instance v2, Lcom/sshtools/common/events/Event;

    iget-object v7, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    iget-boolean v8, v10, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    const/4 v11, 0x1

    xor-int/2addr v8, v11

    const v11, -0xffffa0

    invoke-direct {v2, v7, v11, v8}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    iget-object v7, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1273
    invoke-virtual {v2, v6, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    iget-wide v7, v10, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    .line 1278
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1276
    invoke-virtual {v2, v5, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    const-string v7, "BYTES_READ"

    .line 1281
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1279
    invoke-virtual {v2, v7, v8}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    iget-object v7, v10, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 1282
    invoke-virtual {v2, v4, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    .line 1285
    invoke-virtual {v2, v3, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V
    :try_end_9
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v8, v24

    .line 1288
    :try_start_a
    invoke-virtual {v2, v8, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    .line 1269
    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    goto :goto_2

    :cond_4
    move-object/from16 v8, v24

    .line 1292
    :goto_2
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0, v13}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    :try_end_a
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    move-object/from16 v8, v24

    .line 1295
    :goto_3
    :try_start_b
    iget-object v2, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getStatus()I

    move-result v7

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v7, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1301
    :goto_4
    :try_start_c
    invoke-virtual {v13}, Lcom/sshtools/common/ssh/Packet;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_b
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_c .. :try_end_c} :catch_a
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1335
    :catch_7
    invoke-virtual/range {v22 .. v22}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    :goto_5
    move-object/from16 v8, v24

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v22, v8

    :goto_6
    move-object v8, v2

    .line 1301
    :goto_7
    :try_start_d
    invoke-virtual {v13}, Lcom/sshtools/common/ssh/Packet;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_b
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_d .. :try_end_d} :catch_a
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_c

    :catch_a
    move-exception v0

    goto :goto_e

    :catch_b
    move-exception v0

    goto :goto_10

    .line 1304
    :catch_c
    :goto_8
    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_b
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_e .. :try_end_e} :catch_a
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catch_d
    move-exception v0

    goto :goto_9

    :catch_e
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v2

    :goto_9
    move v13, v14

    move-object v14, v10

    goto/16 :goto_13

    :catch_f
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v2

    :goto_a
    move v13, v14

    :goto_b
    move-object v14, v10

    goto/16 :goto_15

    :catch_10
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v2

    :goto_c
    move v13, v14

    :goto_d
    move-object v14, v10

    goto/16 :goto_17

    :catch_11
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v2

    :goto_e
    move v13, v14

    :goto_f
    move-object v14, v10

    goto/16 :goto_19

    :catch_12
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v2

    :goto_10
    move v13, v14

    :goto_11
    move-object v14, v10

    goto/16 :goto_1b

    :catch_13
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v2

    move v13, v14

    goto :goto_12

    :catch_14
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v2

    move v13, v14

    goto :goto_14

    :catch_15
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v2

    move v13, v14

    goto :goto_16

    :catch_16
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v2

    move v13, v14

    goto/16 :goto_18

    :catch_17
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v2

    move v13, v14

    goto/16 :goto_1a

    :catchall_5
    move-exception v0

    move-object/from16 v22, v8

    goto/16 :goto_1d

    :catch_18
    move-exception v0

    move-object/from16 v22, v8

    const/4 v7, -0x1

    move-object v8, v2

    move v13, v7

    :goto_12
    const/4 v14, 0x0

    :goto_13
    if-eqz v14, :cond_5

    const/4 v11, 0x1

    .line 1330
    :try_start_f
    iput-boolean v11, v14, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    .line 1331
    iput-object v0, v14, Lcom/sshtools/common/sftp/TransferEvent;->ex:Ljava/lang/Throwable;

    .line 1333
    :cond_5
    iget-object v2, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x4

    invoke-virtual {v2, v13, v7, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_1c

    :catch_19
    move-exception v0

    move-object/from16 v22, v8

    const/4 v7, -0x1

    move-object v8, v2

    move v13, v7

    :goto_14
    const/4 v14, 0x0

    :goto_15
    if-eqz v14, :cond_6

    const/4 v11, 0x1

    .line 1324
    iput-boolean v11, v14, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    .line 1325
    iput-object v0, v14, Lcom/sshtools/common/sftp/TransferEvent;->ex:Ljava/lang/Throwable;

    .line 1327
    :cond_6
    iget-object v2, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    invoke-virtual {v2, v13, v7, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_1c

    :catch_1a
    move-exception v0

    move-object/from16 v22, v8

    const/4 v7, -0x1

    move-object v8, v2

    move v13, v7

    :goto_16
    const/4 v14, 0x0

    :goto_17
    if-eqz v14, :cond_7

    const/4 v11, 0x1

    .line 1318
    iput-boolean v11, v14, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    .line 1319
    iput-object v0, v14, Lcom/sshtools/common/sftp/TransferEvent;->ex:Ljava/lang/Throwable;

    .line 1321
    :cond_7
    iget-object v2, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/InvalidHandleException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x4

    invoke-virtual {v2, v13, v7, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_1c

    :catch_1b
    move-exception v0

    move-object/from16 v22, v8

    const/4 v7, -0x1

    move-object v8, v2

    move v13, v7

    :goto_18
    const/4 v14, 0x0

    :goto_19
    if-eqz v14, :cond_8

    const/4 v11, 0x1

    .line 1312
    iput-boolean v11, v14, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    .line 1313
    iput-object v0, v14, Lcom/sshtools/common/sftp/TransferEvent;->ex:Ljava/lang/Throwable;

    .line 1315
    :cond_8
    iget-object v2, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    invoke-virtual {v2, v13, v7, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_1c

    :catch_1c
    move-exception v0

    move-object/from16 v22, v8

    const/4 v7, -0x1

    move-object v8, v2

    move v13, v7

    :goto_1a
    const/4 v14, 0x0

    .line 1309
    :goto_1b
    iget-object v2, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x1

    invoke-virtual {v2, v13, v11, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1335
    :goto_1c
    invoke-virtual/range {v22 .. v22}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    if-eqz v14, :cond_9

    .line 1338
    iget-boolean v0, v14, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->access$400(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v2, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v0, v2}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->isSFTPReadWriteEvents()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1339
    iget-object v0, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    new-instance v2, Lcom/sshtools/common/events/Event;

    iget-object v7, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    iget-boolean v10, v14, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    const v11, -0xffffa0

    invoke-direct {v2, v7, v11, v10}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    iget-object v7, v1, Lcom/sshtools/common/sftp/SftpSubsystem$ReadFileOperation;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1343
    invoke-virtual {v2, v6, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    iget-wide v6, v14, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    .line 1348
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1346
    invoke-virtual {v2, v5, v6}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    iget-object v5, v14, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 1349
    invoke-virtual {v2, v4, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    .line 1352
    invoke-virtual {v2, v3, v9}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1355
    invoke-virtual {v2, v8, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    const-string v3, "THROWABLE"

    iget-object v4, v14, Lcom/sshtools/common/sftp/TransferEvent;->ex:Ljava/lang/Throwable;

    .line 1358
    invoke-virtual {v2, v3, v4}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    .line 1339
    invoke-virtual {v0, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V

    :cond_9
    return-void

    :catchall_6
    move-exception v0

    .line 1335
    :goto_1d
    invoke-virtual/range {v22 .. v22}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 1336
    throw v0
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 1203
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->READ_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

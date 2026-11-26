.class public Lorg/apache/commons/net/tftp/TFTPClient;
.super Lorg/apache/commons/net/tftp/TFTP;
.source "TFTPClient.java"


# static fields
.field public static final DEFAULT_MAX_TIMEOUTS:I = 0x5


# instance fields
.field private maxTimeouts:I

.field private totalBytesReceived:J

.field private totalBytesSent:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/apache/commons/net/tftp/TFTP;-><init>()V

    const/4 v0, 0x5

    .line 69
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I

    return-void
.end method


# virtual methods
.method public getMaxTimeouts()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I

    return v0
.end method

.method public getTotalBytesReceived()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    return-wide v0
.end method

.method public getTotalBytesSent()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    return-wide v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 110
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    const-wide/16 v4, 0x0

    .line 133
    iput-wide v4, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    if-nez v0, :cond_0

    .line 136
    new-instance v4, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;

    move-object/from16 v5, p3

    invoke-direct {v4, v5}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    move-object v4, v5

    .line 139
    :goto_0
    new-instance v5, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    move-object/from16 v6, p1

    invoke-direct {v5, v2, v3, v6, v0}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    .line 140
    new-instance v6, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v3, v7}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/InetAddress;II)V

    .line 142
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    move v9, v7

    move v11, v9

    move v12, v11

    move v13, v12

    const/4 v0, 0x1

    const/4 v10, 0x1

    .line 147
    :goto_1
    :try_start_0
    invoke-virtual {v1, v5}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v15, v7

    const/4 v14, 0x1

    .line 152
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v16

    .line 155
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v7

    .line 156
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 p3, v0

    if-eqz p3, :cond_3

    if-eq v7, v3, :cond_2

    .line 165
    :try_start_2
    invoke-virtual {v6, v7}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setPort(I)V

    .line 166
    invoke-virtual {v2, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_1

    .line 168
    :try_start_3
    invoke-virtual {v6, v8}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 169
    invoke-virtual {v5, v8}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v9, v7

    move-object v3, v8

    goto :goto_3

    :catch_0
    move v9, v7

    move-object v2, v8

    goto :goto_4

    :cond_1
    move-object v3, v2

    move v9, v7

    :goto_3
    const/4 v2, 0x0

    goto :goto_5

    :catch_1
    move v9, v7

    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 160
    :cond_2
    :try_start_4
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v17, v2

    :try_start_5
    const-string v2, "INCORRECT SOURCE PORT"

    const/4 v3, 0x5

    invoke-direct {v0, v8, v7, v3, v2}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 161
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 162
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect source port ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in request reply."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    move-object/from16 v2, v17

    goto :goto_4

    :catch_3
    move-object/from16 v17, v2

    goto :goto_4

    :cond_3
    move-object/from16 v17, v2

    move/from16 v2, p3

    move-object/from16 v3, v17

    .line 174
    :goto_5
    :try_start_6
    invoke-virtual {v3, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_9

    if-ne v7, v9, :cond_9

    .line 175
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v0
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v7, 0x3

    if-eq v0, v7, :cond_5

    const/4 v8, 0x5

    if-eq v0, v8, :cond_4

    .line 208
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received unexpected packet type ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_4
    check-cast v16, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 179
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_4
    move v0, v2

    move-object v2, v3

    goto/16 :goto_9

    .line 181
    :cond_5
    :try_start_9
    check-cast v16, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    .line 182
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataLength()I

    move-result v13

    .line 183
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getBlockNumber()I

    move-result v12
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const v0, 0xffff

    if-ne v12, v10, :cond_7

    .line 187
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getData()[B

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataOffset()I

    move-result v7

    invoke-virtual {v4, v8, v7, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    add-int/lit8 v10, v10, 0x1

    if-le v10, v0, :cond_6

    const/4 v10, 0x0

    :cond_6
    move/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_7

    :catch_5
    move-exception v0

    .line 189
    :try_start_b
    new-instance v7, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const-string v8, "File write failed."
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move/from16 v16, v2

    const/4 v2, 0x3

    :try_start_c
    invoke-direct {v7, v3, v9, v2, v8}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 190
    invoke-virtual {v1, v7}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 191
    throw v0

    :cond_7
    move/from16 v16, v2

    .line 200
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v10, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v0, v10, -0x1

    :goto_6
    move-object/from16 v17, v3

    if-ne v12, v0, :cond_a

    :goto_7
    const/4 v14, 0x0

    goto :goto_8

    :catch_6
    move/from16 v16, v2

    :catch_7
    move-object v2, v3

    move/from16 v0, v16

    goto :goto_9

    :cond_9
    move/from16 v16, v2

    .line 211
    :try_start_d
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const-string v2, "Unexpected host or port."
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/io/InterruptedIOException; {:try_start_d .. :try_end_d} :catch_9
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v17, v3

    const/4 v3, 0x5

    :try_start_e
    invoke-direct {v0, v8, v7, v3, v2}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 212
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_e} :catch_a
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_a
    :goto_8
    move/from16 v0, v16

    move-object/from16 v2, v17

    goto :goto_a

    :catch_8
    move/from16 v16, v2

    :catch_9
    move-object/from16 v17, v3

    :catch_a
    move/from16 v0, v16

    move-object/from16 v2, v17

    goto :goto_9

    :catch_b
    move-exception v0

    .line 219
    :try_start_f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad packet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_c
    move/from16 p3, v0

    move-object/from16 v17, v2

    :goto_9
    add-int/lit8 v15, v15, 0x1

    .line 215
    iget v3, v1, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I

    if-ge v15, v3, :cond_d

    :goto_a
    if-nez v14, :cond_c

    .line 223
    invoke-virtual {v6, v12}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setBlockNumber(I)V

    add-int/2addr v11, v13

    .line 226
    iget-wide v7, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    int-to-long v14, v13

    add-long/2addr v7, v14

    iput-wide v7, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    const/16 v3, 0x200

    if-eq v13, v3, :cond_b

    .line 228
    invoke-virtual {v1, v6}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 230
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    return v11

    :cond_b
    move/from16 v3, p5

    move-object v5, v6

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_c
    move/from16 v3, p5

    const/4 v7, 0x0

    goto/16 :goto_2

    .line 216
    :cond_d
    :try_start_10
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Connection timed out."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :catchall_0
    move-exception v0

    .line 230
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 231
    throw v0
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 280
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v4, p5

    const-wide/16 v2, 0x0

    .line 301
    iput-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    if-nez v0, :cond_0

    .line 304
    new-instance v2, Lorg/apache/commons/net/io/ToNetASCIIInputStream;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v3, p3

    move-object v9, v3

    .line 307
    :goto_0
    new-instance v10, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v10, v3, v4, v2, v0}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    .line 308
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    iget-object v6, v1, Lorg/apache/commons/net/tftp/TFTPClient;->sendBuffer:[B

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 310
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    move-object/from16 v5, p4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 316
    :goto_1
    :try_start_0
    invoke-virtual {v1, v10}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 321
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v15

    .line 322
    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 323
    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v3
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x5

    if-eqz v6, :cond_3

    if-eq v3, v4, :cond_2

    .line 334
    :try_start_2
    invoke-virtual {v2, v3}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setPort(I)V

    .line 335
    invoke-virtual {v5, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_1

    .line 337
    :try_start_3
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 338
    invoke-virtual {v10, v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v0

    goto :goto_3

    :catch_0
    move-object v5, v0

    goto :goto_4

    :cond_1
    :goto_3
    move v7, v3

    const/4 v6, 0x0

    goto :goto_5

    :catch_1
    :goto_4
    move v7, v3

    :catch_2
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 329
    :cond_2
    :try_start_4
    new-instance v6, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const-string v15, "INCORRECT SOURCE PORT"

    invoke-direct {v6, v0, v3, v14, v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 330
    invoke-virtual {v1, v6}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 331
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incorrect source port ("

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") in request reply."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    :cond_3
    :goto_5
    :try_start_5
    invoke-virtual {v5, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    if-ne v3, v7, :cond_8

    .line 345
    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    if-eq v0, v14, :cond_4

    .line 365
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Received unexpected packet type."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_4
    check-cast v15, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 348
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error code "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " received: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_5
    check-cast v15, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->getBlockNumber()I

    move-result v0

    if-ne v0, v8, :cond_7

    add-int/lit8 v8, v8, 0x1

    const v0, 0xffff

    if-le v8, v0, :cond_6

    const/4 v8, 0x0

    :cond_6
    const/4 v12, 0x0

    goto :goto_7

    .line 361
    :cond_7
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V

    goto :goto_7

    .line 368
    :cond_8
    new-instance v15, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const-string v4, "Unexpected host or port."

    invoke-direct {v15, v0, v3, v14, v4}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 369
    invoke-virtual {v1, v15}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catch_3
    move-exception v0

    .line 376
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad packet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_4
    :goto_6
    add-int/lit8 v13, v13, 0x1

    .line 372
    iget v0, v1, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ge v13, v0, :cond_d

    :goto_7
    if-nez v12, :cond_c

    if-eqz v11, :cond_9

    .line 404
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    return-void

    :cond_9
    const/16 v0, 0x200

    move v4, v0

    const/4 v3, 0x4

    const/4 v10, 0x0

    :goto_8
    if-lez v4, :cond_a

    .line 389
    :try_start_7
    iget-object v12, v1, Lorg/apache/commons/net/tftp/TFTPClient;->sendBuffer:[B

    invoke-virtual {v9, v12, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    if-lez v12, :cond_a

    add-int/2addr v3, v12

    sub-int/2addr v4, v12

    add-int/2addr v10, v12

    goto :goto_8

    :cond_a
    if-ge v10, v0, :cond_b

    const/4 v11, 0x1

    .line 398
    :cond_b
    invoke-virtual {v2, v8}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setBlockNumber(I)V

    .line 399
    iget-object v0, v1, Lorg/apache/commons/net/tftp/TFTPClient;->sendBuffer:[B

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v3, v10}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setData([BII)V

    .line 401
    iget-wide v3, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    int-to-long v12, v10

    add-long/2addr v3, v12

    iput-wide v3, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    move/from16 v4, p5

    move-object v10, v2

    goto/16 :goto_1

    :cond_c
    move/from16 v4, p5

    goto/16 :goto_2

    .line 373
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Connection timed out."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    .line 404
    invoke-virtual {v1}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 405
    throw v0
.end method

.method public setMaxTimeouts(I)V
    .locals 1

    const/4 v0, 0x1

    .line 447
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I

    return-void
.end method

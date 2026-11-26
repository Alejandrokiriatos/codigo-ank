.class public Lorg/apache/commons/net/tftp/TFTP;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "TFTP.java"


# static fields
.field public static final ASCII_MODE:I = 0x0

.field public static final BINARY_MODE:I = 0x1

.field public static final DEFAULT_PORT:I = 0x45

.field public static final DEFAULT_TIMEOUT:I = 0x1388
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_TIMEOUT_DURATION:Ljava/time/Duration;

.field private static final HEADER_SIZE:I = 0x4

.field public static final IMAGE_MODE:I = 0x1

.field public static final NETASCII_MODE:I = 0x0

.field public static final OCTET_MODE:I = 0x1

.field static final PACKET_SIZE:I = 0x204


# instance fields
.field private buffersInitialized:Z

.field private packetSize:I

.field private receiveBuffer:[B

.field private receiveDatagram:Ljava/net/DatagramPacket;

.field sendBuffer:[B

.field private sendDatagram:Ljava/net/DatagramPacket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x5

    .line 88
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/tftp/TFTP;->DEFAULT_TIMEOUT_DURATION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    const/16 v0, 0x204

    .line 120
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    .line 135
    sget-object v0, Lorg/apache/commons/net/tftp/TFTP;->DEFAULT_TIMEOUT_DURATION:Ljava/time/Duration;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/tftp/TFTP;->setDefaultTimeout(Ljava/time/Duration;)V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveBuffer:[B

    .line 137
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    return-void
.end method

.method public static final getModeName(I)Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->modeStrings:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public final beginBufferedOps()V
    .locals 3

    .line 146
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveBuffer:[B

    .line 147
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveBuffer:[B

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    .line 148
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    .line 149
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->sendDatagram:Ljava/net/DatagramPacket;

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lorg/apache/commons/net/tftp/TFTP;->buffersInitialized:Z

    return-void
.end method

.method public final bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;,
            Ljava/net/SocketException;,
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveBuffer:[B

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setData([B)V

    .line 171
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveBuffer:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTP;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 174
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    invoke-static {v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->newTFTPPacket(Ljava/net/DatagramPacket;)Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v0

    .line 175
    const-string v1, "<"

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/tftp/TFTP;->trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V

    return-object v0
.end method

.method public final bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const-string v0, ">"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/tftp/TFTP;->trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 192
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTP;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTP;->sendDatagram:Ljava/net/DatagramPacket;

    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/net/tftp/TFTPPacket;->newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public final discardPackets()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/net/DatagramPacket;

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 203
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTP;->getSoTimeoutDuration()Ljava/time/Duration;

    move-result-object v1

    const-wide/16 v2, 0x1

    .line 204
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/tftp/TFTP;->setSoTimeout(Ljava/time/Duration;)V

    .line 207
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTP;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/tftp/TFTP;->setSoTimeout(Ljava/time/Duration;)V

    return-void
.end method

.method public final endBufferedOps()V
    .locals 1

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveBuffer:[B

    .line 220
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->receiveDatagram:Ljava/net/DatagramPacket;

    .line 221
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    .line 222
    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTP;->sendDatagram:Ljava/net/DatagramPacket;

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lorg/apache/commons/net/tftp/TFTP;->buffersInitialized:Z

    return-void
.end method

.method public getPacketSize()I
    .locals 1

    .line 299
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    return v0
.end method

.method public final receive()Lorg/apache/commons/net/tftp/TFTPPacket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;,
            Ljava/net/SocketException;,
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/net/DatagramPacket;

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 242
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTP;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 244
    invoke-static {v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->newTFTPPacket(Ljava/net/DatagramPacket;)Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v0

    .line 245
    const-string v1, "<"

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/tftp/TFTP;->trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V

    return-object v0
.end method

.method public final resetBuffersToSize(I)V
    .locals 1

    const/16 v0, 0x8

    .line 284
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const v0, 0xffb8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/apache/commons/net/tftp/TFTP;->packetSize:I

    .line 286
    iget-boolean p1, p0, Lorg/apache/commons/net/tftp/TFTP;->buffersInitialized:Z

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTP;->endBufferedOps()V

    .line 288
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTP;->beginBufferedOps()V

    :cond_0
    return-void
.end method

.method public final send(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    const-string v0, ">"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/tftp/TFTP;->trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTP;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/net/tftp/TFTPPacket;->newDatagram()Ljava/net/DatagramPacket;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method protected trace(Ljava/lang/String;Lorg/apache/commons/net/tftp/TFTPPacket;)V
    .locals 0

    return-void
.end method

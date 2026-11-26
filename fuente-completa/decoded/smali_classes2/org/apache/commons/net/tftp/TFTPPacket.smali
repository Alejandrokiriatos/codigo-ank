.class public abstract Lorg/apache/commons/net/tftp/TFTPPacket;
.super Ljava/lang/Object;
.source "TFTPPacket.java"


# static fields
.field public static final ACKNOWLEDGEMENT:I = 0x4

.field public static final DATA:I = 0x3

.field public static final ERROR:I = 0x5

.field static final MIN_PACKET_SIZE:I = 0x4

.field public static final OACK:I = 0x6

.field public static final READ_REQUEST:I = 0x1

.field public static final SEGMENT_SIZE:I = 0x200

.field public static final WRITE_REQUEST:I = 0x2


# instance fields
.field address:Ljava/net/InetAddress;

.field port:I

.field type:I


# direct methods
.method constructor <init>(ILjava/net/InetAddress;I)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    .line 136
    iput-object p2, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    .line 137
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    return-void
.end method

.method public static final newTFTPPacket(Ljava/net/DatagramPacket;)Lorg/apache/commons/net/tftp/TFTPPacket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    .line 94
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const/4 v2, 0x1

    .line 96
    aget-byte v0, v0, v2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 110
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/DatagramPacket;)V

    return-object v0

    .line 113
    :cond_0
    new-instance p0, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v0, "Bad packet.  Invalid TFTP operator code."

    invoke-direct {p0, v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_1
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/DatagramPacket;)V

    return-object v0

    .line 104
    :cond_2
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/DatagramPacket;)V

    return-object v0

    .line 101
    :cond_3
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/DatagramPacket;)V

    return-object v0

    .line 98
    :cond_4
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/DatagramPacket;)V

    return-object v0

    .line 92
    :cond_5
    new-instance p0, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v0, "Bad packet. Datagram data length is too short."

    invoke-direct {p0, v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 164
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    return v0
.end method

.method public abstract newDatagram()Ljava/net/DatagramPacket;
.end method

.method abstract newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
.end method

.method public final setAddress(Ljava/net/InetAddress;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    return-void
.end method

.method public final setPort(I)V
    .locals 0

    .line 202
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

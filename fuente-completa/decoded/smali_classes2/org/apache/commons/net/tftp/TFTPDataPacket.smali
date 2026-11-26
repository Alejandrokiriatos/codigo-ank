.class public final Lorg/apache/commons/net/tftp/TFTPDataPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "TFTPDataPacket.java"


# static fields
.field public static final MAX_DATA_LENGTH:I = 0x200

.field public static final MIN_DATA_LENGTH:I


# instance fields
.field blockNumber:I

.field private data:[B

.field private length:I

.field private offset:I


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 65
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    const/4 v0, 0x4

    .line 66
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->offset:I

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getType()I

    move-result v1

    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    const/4 v4, 0x1

    aget-byte v4, v3, v4

    if-ne v1, v4, :cond_0

    const/4 v1, 0x2

    .line 72
    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    .line 74
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    return-void

    .line 69
    :cond_0
    new-instance p1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v0, "TFTP operator code does not match type."

    invoke-direct {p1, v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[B)V
    .locals 7

    const/4 v5, 0x0

    .line 87
    array-length v6, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[BII)V
    .locals 1

    const/4 v0, 0x3

    .line 102
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 103
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    .line 104
    iput-object p4, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    .line 105
    iput p5, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->offset:I

    .line 106
    iput p6, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    return-void
.end method


# virtual methods
.method public getBlockNumber()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    return v0
.end method

.method public getDataOffset()I
    .locals 1

    .line 142
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->offset:I

    return v0
.end method

.method public newDatagram()Ljava/net/DatagramPacket;
    .locals 5

    .line 156
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 157
    aput-byte v2, v0, v2

    .line 158
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->type:I

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 159
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    const v3, 0xffff

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    .line 160
    aput-byte v2, v0, v3

    .line 162
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->offset:I

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    new-instance v2, Ljava/net/DatagramPacket;

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    add-int/2addr v3, v1

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->address:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->port:I

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v2
.end method

.method newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 4

    const/4 v0, 0x0

    .line 177
    aput-byte v0, p2, v0

    .line 178
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->type:I

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 179
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    const v1, 0xffff

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, p2, v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    .line 180
    aput-byte v0, p2, v1

    .line 183
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    const/4 v1, 0x4

    if-eq p2, v0, :cond_0

    .line 184
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->offset:I

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->address:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 188
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->port:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 189
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 190
    iget p2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    return-object p1
.end method

.method public setBlockNumber(I)V
    .locals 0

    .line 201
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    return-void
.end method

.method public setData([BII)V
    .locals 0

    .line 212
    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->data:[B

    .line 213
    iput p2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->offset:I

    .line 214
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/net/tftp/TFTPPacket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->blockNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

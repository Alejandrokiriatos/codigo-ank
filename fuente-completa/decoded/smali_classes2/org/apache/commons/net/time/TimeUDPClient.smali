.class public final Lorg/apache/commons/net/time/TimeUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "TimeUDPClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x25

.field public static final SECONDS_1900_TO_1970:J = 0x83aa7e80L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    return-void
.end method

.method static toTime([B)J
    .locals 6

    const/4 v0, 0x0

    .line 49
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x1

    .line 50
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    and-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 v4, 0x2

    .line 51
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    and-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 v4, 0x3

    .line 52
    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDate(Ljava/net/InetAddress;)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x25

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/time/TimeUDPClient;->getTime(Ljava/net/InetAddress;I)J

    move-result-wide v1

    const-wide v3, 0x83aa7e80L

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDate(Ljava/net/InetAddress;I)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/time/TimeUDPClient;->getTime(Ljava/net/InetAddress;I)J

    move-result-wide p1

    const-wide v1, 0x83aa7e80L

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTime(Ljava/net/InetAddress;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x25

    .line 94
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/time/TimeUDPClient;->getTime(Ljava/net/InetAddress;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime(Ljava/net/InetAddress;I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 107
    new-array v1, v0, [B

    const/4 v2, 0x4

    .line 108
    new-array v3, v2, [B

    .line 110
    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, v1, v0, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 111
    new-instance p1, Ljava/net/DatagramPacket;

    invoke-direct {p1, v3, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 113
    invoke-virtual {p0}, Lorg/apache/commons/net/time/TimeUDPClient;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/net/time/TimeUDPClient;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 116
    invoke-static {v3}, Lorg/apache/commons/net/time/TimeUDPClient;->toTime([B)J

    move-result-wide p1

    return-wide p1
.end method

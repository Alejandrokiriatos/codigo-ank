.class public abstract Lorg/apache/commons/net/DatagramSocketClient;
.super Ljava/lang/Object;
.source "DatagramSocketClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final DEFAULT_SOCKET_FACTORY:Lorg/apache/commons/net/DatagramSocketFactory;


# instance fields
.field protected _isOpen_:Z

.field protected _socketFactory_:Lorg/apache/commons/net/DatagramSocketFactory;

.field protected _socket_:Ljava/net/DatagramSocket;

.field protected _timeout_:I

.field private charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/apache/commons/net/DefaultDatagramSocketFactory;

    invoke-direct {v0}, Lorg/apache/commons/net/DefaultDatagramSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/net/DatagramSocketClient;->DEFAULT_SOCKET_FACTORY:Lorg/apache/commons/net/DatagramSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->charset:Ljava/nio/charset/Charset;

    .line 64
    sget-object v0, Lorg/apache/commons/net/DatagramSocketClient;->DEFAULT_SOCKET_FACTORY:Lorg/apache/commons/net/DatagramSocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socketFactory_:Lorg/apache/commons/net/DatagramSocketFactory;

    return-void
.end method


# virtual methods
.method protected checkOpen()Ljava/net/DatagramSocket;
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socket_:Ljava/net/DatagramSocket;

    const-string v1, "DatagramSocket"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socket_:Ljava/net/DatagramSocket;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_isOpen_:Z

    return-void
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTimeout()I
    .locals 1

    .line 125
    iget v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_timeout_:I

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 145
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getSoTimeoutDuration()Ljava/time/Duration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getSoTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_isOpen_:Z

    return v0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socketFactory_:Lorg/apache/commons/net/DatagramSocketFactory;

    invoke-interface {v0}, Lorg/apache/commons/net/DatagramSocketFactory;->createDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socket_:Ljava/net/DatagramSocket;

    .line 192
    iget v1, p0, Lorg/apache/commons/net/DatagramSocketClient;->_timeout_:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_isOpen_:Z

    return-void
.end method

.method public open(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socketFactory_:Lorg/apache/commons/net/DatagramSocketFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/DatagramSocketFactory;->createDatagramSocket(I)Ljava/net/DatagramSocket;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socket_:Ljava/net/DatagramSocket;

    .line 208
    iget v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_timeout_:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lorg/apache/commons/net/DatagramSocketClient;->_isOpen_:Z

    return-void
.end method

.method public open(ILjava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socketFactory_:Lorg/apache/commons/net/DatagramSocketFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/net/DatagramSocketFactory;->createDatagramSocket(ILjava/net/InetAddress;)Ljava/net/DatagramSocket;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socket_:Ljava/net/DatagramSocket;

    .line 225
    iget p2, p0, Lorg/apache/commons/net/DatagramSocketClient;->_timeout_:I

    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lorg/apache/commons/net/DatagramSocketClient;->_isOpen_:Z

    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/apache/commons/net/DatagramSocketClient;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public setDatagramSocketFactory(Lorg/apache/commons/net/DatagramSocketFactory;)V
    .locals 0

    if-nez p1, :cond_0

    .line 247
    sget-object p1, Lorg/apache/commons/net/DatagramSocketClient;->DEFAULT_SOCKET_FACTORY:Lorg/apache/commons/net/DatagramSocketFactory;

    iput-object p1, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socketFactory_:Lorg/apache/commons/net/DatagramSocketFactory;

    return-void

    .line 249
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socketFactory_:Lorg/apache/commons/net/DatagramSocketFactory;

    return-void
.end method

.method public setDefaultTimeout(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    iput p1, p0, Lorg/apache/commons/net/DatagramSocketClient;->_timeout_:I

    return-void
.end method

.method public setDefaultTimeout(Ljava/time/Duration;)V
    .locals 2

    .line 261
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/net/DatagramSocketClient;->_timeout_:I

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    return-void
.end method

.method public setSoTimeout(Ljava/time/Duration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->checkOpen()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    return-void
.end method

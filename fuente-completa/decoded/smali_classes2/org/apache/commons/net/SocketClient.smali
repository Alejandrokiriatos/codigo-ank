.class public abstract Lorg/apache/commons/net/SocketClient;
.super Ljava/lang/Object;
.source "SocketClient.java"


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0xea60

.field private static final DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

.field private static final DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

.field public static final NETASCII_EOL:Ljava/lang/String; = "\r\n"


# instance fields
.field protected _defaultPort_:I

.field protected _hostname_:Ljava/lang/String;

.field protected _input_:Ljava/io/InputStream;

.field protected _output_:Ljava/io/OutputStream;

.field protected _serverSocketFactory_:Ljavax/net/ServerSocketFactory;

.field protected _socketFactory_:Ljavax/net/SocketFactory;

.field protected _socket_:Ljava/net/Socket;

.field protected _timeout_:I

.field private charset:Ljava/nio/charset/Charset;

.field private commandSupport:Lorg/apache/commons/net/ProtocolCommandSupport;

.field private connProxy:Ljava/net/Proxy;

.field protected connectTimeout:I

.field private receiveBufferSize:I

.field protected remoteInetSocketAddress:Ljava/net/InetSocketAddress;

.field private sendBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/SocketClient;->DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    .line 58
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/SocketClient;->DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    .line 120
    iput v0, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    .line 126
    iput v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    .line 134
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->charset:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 142
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 144
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    .line 146
    iput v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    .line 147
    sget-object v0, Lorg/apache/commons/net/SocketClient;->DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    .line 148
    sget-object v0, Lorg/apache/commons/net/SocketClient;->DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method private _connect(Ljava/net/InetSocketAddress;Ljava/net/InetAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->remoteInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 154
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 155
    iget v1, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 156
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 158
    :cond_0
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    if-eq v0, v2, :cond_1

    .line 159
    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_1
    if-eqz p2, :cond_2

    .line 162
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 164
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget p3, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    invoke-virtual {p2, p1, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    return-void
.end method

.method protected static getHostAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static getHostAddress(Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/net/SocketClient;->getHostAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->applySocketAttributes()V

    .line 183
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 184
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    return-void
.end method

.method public addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 1

    .line 194
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    return-void
.end method

.method protected applySocketAttributes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method protected checkOpenOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    const-string v1, "OutputStream"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/lang/String;I)V

    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 293
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    .line 311
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p3, p4}, Lorg/apache/commons/net/SocketClient;->_connect(Ljava/net/InetSocketAddress;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    .line 232
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    .line 247
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 p1, -0x1

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/commons/net/SocketClient;->_connect(Ljava/net/InetSocketAddress;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    .line 264
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0, p3, p4}, Lorg/apache/commons/net/SocketClient;->_connect(Ljava/net/InetSocketAddress;Ljava/net/InetAddress;I)V

    return-void
.end method

.method protected createCommandSupport()V
    .locals 1

    .line 318
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->commandSupport:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 330
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 331
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 333
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    .line 334
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    .line 335
    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    return-void
.end method

.method protected fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 346
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected fireReplyReceived(ILjava/lang/String;)V
    .locals 1

    .line 357
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireReplyReceived(ILjava/lang/String;)V

    return-void
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->commandSupport:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 399
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    return v0
.end method

.method public getDefaultPort()I
    .locals 1

    .line 408
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    return v0
.end method

.method public getDefaultTimeout()I
    .locals 1

    .line 417
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    return v0
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->connProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method protected getReceiveBufferSize()I
    .locals 1

    .line 468
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected getRemoteInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 488
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->remoteInetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 498
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method protected getSendBufferSize()I
    .locals 1

    .line 508
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    return v0
.end method

.method public getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    return-object v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

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

    .line 540
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 563
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 565
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 568
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 571
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 574
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 580
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 583
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 588
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 590
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_6
    return v1
.end method

.method public isConnected()Z
    .locals 1

    .line 607
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 611
    :cond_0
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 1

    .line 621
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 641
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    return-void
.end method

.method public setDefaultPort(I)V
    .locals 0

    .line 651
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    return-void
.end method

.method public setDefaultTimeout(I)V
    .locals 0

    .line 661
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 1

    .line 686
    new-instance v0, Lorg/apache/commons/net/DefaultSocketFactory;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/DefaultSocketFactory;-><init>(Ljava/net/Proxy;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 687
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->connProxy:Ljava/net/Proxy;

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 699
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 711
    iput p1, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    return-void
.end method

.method public setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V
    .locals 0

    if-nez p1, :cond_0

    .line 723
    sget-object p1, Lorg/apache/commons/net/SocketClient;->DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    return-void

    .line 725
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 0

    if-nez p1, :cond_0

    .line 737
    sget-object p1, Lorg/apache/commons/net/SocketClient;->DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    return-void

    .line 739
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public verifyRemote(Ljava/net/Socket;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 788
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

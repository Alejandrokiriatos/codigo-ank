.class public abstract Lorg/java_websocket/client/WebSocketClient;
.super Lorg/java_websocket/AbstractWebSocket;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/java_websocket/WebSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;
    }
.end annotation


# instance fields
.field private closeLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectReadThread:Ljava/lang/Thread;

.field private connectTimeout:I

.field private dnsResolver:Lorg/java_websocket/client/DnsResolver;

.field private draft:Lorg/java_websocket/drafts/Draft;

.field private engine:Lorg/java_websocket/WebSocketImpl;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ostream:Ljava/io/OutputStream;

.field private proxy:Ljava/net/Proxy;

.field private socket:Ljava/net/Socket;

.field private socketFactory:Ljavax/net/SocketFactory;

.field protected uri:Ljava/net/URI;

.field private writeThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 159
    new-instance v0, Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    new-instance v0, Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/java_websocket/drafts/Draft;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/java_websocket/drafts/Draft;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    .line 84
    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    .line 89
    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 96
    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 106
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    .line 131
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 136
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    .line 141
    iput v1, p0, Lorg/java_websocket/client/WebSocketClient;->connectTimeout:I

    .line 149
    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->dnsResolver:Lorg/java_websocket/client/DnsResolver;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 218
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    .line 219
    iput-object p2, p0, Lorg/java_websocket/client/WebSocketClient;->draft:Lorg/java_websocket/drafts/Draft;

    .line 220
    new-instance p1, Lorg/java_websocket/client/WebSocketClient$1;

    invoke-direct {p1, p0}, Lorg/java_websocket/client/WebSocketClient$1;-><init>(Lorg/java_websocket/client/WebSocketClient;)V

    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->dnsResolver:Lorg/java_websocket/client/DnsResolver;

    if-eqz p3, :cond_0

    .line 227
    new-instance p1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    .line 228
    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 230
    :cond_0
    iput p4, p0, Lorg/java_websocket/client/WebSocketClient;->connectTimeout:I

    .line 231
    invoke-virtual {p0, v1}, Lorg/java_websocket/client/WebSocketClient;->setTcpNoDelay(Z)V

    .line 232
    invoke-virtual {p0, v1}, Lorg/java_websocket/client/WebSocketClient;->setReuseAddr(Z)V

    .line 233
    new-instance p1, Lorg/java_websocket/WebSocketImpl;

    invoke-direct {p1, p0, p2}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V

    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    return-void

    .line 216
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic access$000(Lorg/java_websocket/client/WebSocketClient;Ljava/io/IOException;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/java_websocket/client/WebSocketClient;->handleIOException(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic access$100(Lorg/java_websocket/client/WebSocketClient;)Lorg/java_websocket/WebSocketImpl;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    return-object p0
.end method

.method static synthetic access$200(Lorg/java_websocket/client/WebSocketClient;)Ljava/io/OutputStream;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/java_websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic access$300(Lorg/java_websocket/client/WebSocketClient;)Ljava/net/Socket;
    .locals 0

    .line 74
    iget-object p0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return-object p0
.end method

.method private getPort()I
    .locals 4

    .line 604
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 605
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 606
    const-string v2, "wss"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    if-ne v0, v3, :cond_1

    const/16 v0, 0x1bb

    return v0

    .line 608
    :cond_0
    const-string v2, "ws"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v0, v3, :cond_1

    const/16 v0, 0x50

    :cond_1
    return v0

    .line 611
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown scheme: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleIOException(Ljava/io/IOException;)V
    .locals 1

    .line 1005
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0, p1}, Lorg/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 1008
    :cond_0
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->eot()V

    return-void
.end method

.method private prepareSocket()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 573
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return v2

    .line 575
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return v1

    .line 577
    :cond_1
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-nez v0, :cond_2

    .line 578
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return v2

    .line 580
    :cond_2
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 581
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private reset()V
    .locals 3

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_4

    .line 343
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getReadyState()Lorg/java_websocket/enums/ReadyState;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/enums/ReadyState;->NOT_YET_CONNECTED:Lorg/java_websocket/enums/ReadyState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 347
    :cond_0
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->closeBlocking()V

    .line 349
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 351
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 352
    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    .line 354
    :cond_1
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 355
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 356
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 357
    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    .line 359
    :cond_2
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lorg/java_websocket/drafts/Draft;->reset()V

    .line 360
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_3

    .line 361
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 362
    iput-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 370
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    .line 371
    new-instance v0, Lorg/java_websocket/WebSocketImpl;

    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-direct {v0, p0, v1}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    return-void

    :catch_0
    move-exception v0

    .line 365
    invoke-virtual {p0, v0}, Lorg/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 366
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    const/16 v2, 0x3ee

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    return-void

    .line 338
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot initialize a reconnect out of the websocket thread. Use reconnect in another thread to ensure a successful cleanup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendHandshake()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 625
    :cond_0
    const-string v0, "/"

    :cond_1
    if-eqz v1, :cond_2

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    :cond_2
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->getPort()I

    move-result v1

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x50

    if-eq v1, v3, :cond_3

    const/16 v3, 0x1bb

    if-eq v1, v3, :cond_3

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 636
    :cond_3
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 638
    new-instance v2, Lorg/java_websocket/handshake/HandshakeImpl1Client;

    invoke-direct {v2}, Lorg/java_websocket/handshake/HandshakeImpl1Client;-><init>()V

    .line 639
    invoke-virtual {v2, v0}, Lorg/java_websocket/handshake/HandshakeImpl1Client;->setResourceDescriptor(Ljava/lang/String;)V

    .line 640
    const-string v0, "Host"

    invoke-virtual {v2, v0, v1}, Lorg/java_websocket/handshake/HandshakeImpl1Client;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 642
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 643
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/java_websocket/handshake/HandshakeImpl1Client;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 646
    :cond_4
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, v2}, Lorg/java_websocket/WebSocketImpl;->startHandshake(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)V

    return-void
.end method

.method private upgradeSocketToSSL()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    instance-of v1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    .line 562
    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    .line 564
    :cond_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 566
    :goto_0
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->getPort()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearHeaders()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    return-void
.end method

.method public close()V
    .locals 2

    .line 424
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/java_websocket/WebSocketImpl;->close(I)V

    :cond_0
    return-void
.end method

.method public close(I)V
    .locals 1

    .line 937
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->close(I)V

    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1

    .line 942
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V

    return-void
.end method

.method public closeBlocking()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->close()V

    .line 436
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 1

    .line 947
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 4

    .line 378
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    .line 382
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isDaemon()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 383
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebSocketConnectReadThread-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectBlocking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->connect()V

    .line 395
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 396
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v0

    return v0
.end method

.method public connectBlocking(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->connect()V

    .line 411
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 413
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->reset()V

    :cond_0
    if-eqz p1, :cond_1

    .line 416
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAttachment()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConnection()Lorg/java_websocket/WebSocket;
    .locals 1

    .line 744
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    return-object v0
.end method

.method protected getConnections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDraft()Lorg/java_websocket/drafts/Draft;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->draft:Lorg/java_websocket/drafts/Draft;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 967
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 749
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 750
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProtocol()Lorg/java_websocket/protocols/IProtocol;
    .locals 1

    .line 996
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v0

    return-object v0
.end method

.method public getReadyState()Lorg/java_websocket/enums/ReadyState;
    .locals 1

    .line 653
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getReadyState()Lorg/java_websocket/enums/ReadyState;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 972
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 757
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 758
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .line 977
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    .line 987
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->hasSSLSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0

    .line 988
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This websocket uses ws instead of wss. No SSLSession available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    .line 932
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->hasBufferedData()Z

    move-result v0

    return v0
.end method

.method public hasSSLSupport()Z
    .locals 1

    .line 982
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 922
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 927
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isFlushAndClose()Z
    .locals 1

    .line 917
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isFlushAndClose()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 912
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v0

    return v0
.end method

.method public abstract onClose(ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public abstract onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
.end method

.method protected onSetSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    .line 595
    const-string v0, "HTTPS"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public final onWebsocketClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 684
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->stopConnectionLostTimer()V

    .line 685
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 686
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 688
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/java_websocket/client/WebSocketClient;->onClose(ILjava/lang/String;Z)V

    .line 689
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 690
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onWebsocketCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 708
    invoke-virtual {p0, p2, p3}, Lorg/java_websocket/client/WebSocketClient;->onCloseInitiated(ILjava/lang/String;)V

    return-void
.end method

.method public onWebsocketClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 713
    invoke-virtual {p0, p2, p3, p4}, Lorg/java_websocket/client/WebSocketClient;->onClosing(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0

    .line 698
    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0

    .line 661
    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 666
    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onMessage(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final onWebsocketOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/Handshakedata;)V
    .locals 0

    .line 674
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->startConnectionLostTimer()V

    .line 675
    check-cast p2, Lorg/java_websocket/handshake/ServerHandshake;

    invoke-virtual {p0, p2}, Lorg/java_websocket/client/WebSocketClient;->onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V

    .line 676
    iget-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onWriteDemand(Lorg/java_websocket/WebSocket;)V
    .locals 0

    return-void
.end method

.method public reconnect()V
    .locals 0

    .line 313
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->reset()V

    .line 314
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->connect()V

    return-void
.end method

.method public reconnectBlocking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->reset()V

    .line 327
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->connectBlocking()Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 287
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public run()V
    .locals 6

    const/4 v0, -0x1

    .line 480
    :try_start_0
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->prepareSocket()Z

    move-result v1

    .line 482
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isTcpNoDelay()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 483
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isReuseAddr()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 484
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->getReceiveBufferSize()I

    move-result v2

    if-lez v2, :cond_0

    .line 486
    iget-object v3, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 489
    :cond_0
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 490
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->dnsResolver:Lorg/java_websocket/client/DnsResolver;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->getPort()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/java_websocket/client/WebSocketClient;->dnsResolver:Lorg/java_websocket/client/DnsResolver;

    iget-object v4, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-interface {v3, v4}, Lorg/java_websocket/client/DnsResolver;->resolve(Ljava/net/URI;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 491
    :goto_0
    iget-object v3, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    iget v4, p0, Lorg/java_websocket/client/WebSocketClient;->connectTimeout:I

    invoke-virtual {v3, v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    :cond_2
    if-eqz v1, :cond_3

    .line 495
    const-string v1, "wss"

    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 496
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->upgradeSocketToSSL()V

    .line 499
    :cond_3
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    instance-of v2, v1, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_4

    .line 500
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 501
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    .line 502
    invoke-virtual {p0, v2}, Lorg/java_websocket/client/WebSocketClient;->onSetSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 503
    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 506
    :cond_4
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 507
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;

    .line 509
    invoke-direct {p0}, Lorg/java_websocket/client/WebSocketClient;->sendHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_3

    .line 526
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz v2, :cond_5

    .line 527
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 529
    :try_start_1
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 534
    :catch_0
    :cond_5
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;

    invoke-direct {v3, p0, p0}, Lorg/java_websocket/client/WebSocketClient$WebsocketWriteThread;-><init>(Lorg/java_websocket/client/WebSocketClient;Lorg/java_websocket/client/WebSocketClient;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    .line 535
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isDaemon()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 536
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 538
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->getReceiveBufferSize()I

    move-result v2

    if-lez v2, :cond_6

    goto :goto_1

    .line 539
    :cond_6
    sget v2, Lorg/java_websocket/client/WebSocketClient;->DEFAULT_READ_BUFFER_SIZE:I

    :goto_1
    new-array v2, v2, [B

    .line 543
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isClosing()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lorg/java_websocket/client/WebSocketClient;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v0, :cond_7

    .line 544
    iget-object v4, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/java_websocket/WebSocketImpl;->decode(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 546
    :cond_7
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->eot()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 551
    invoke-virtual {p0, v0}, Lorg/java_websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 552
    iget-object v1, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    const/16 v2, 0x3ee

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    .line 548
    invoke-direct {p0, v0}, Lorg/java_websocket/client/WebSocketClient;->handleIOException(Ljava/io/IOException;)V

    :goto_3
    return-void

    :catch_3
    move-exception v1

    .line 516
    invoke-virtual {v1}, Ljava/lang/InternalError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/InternalError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 517
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_8

    .line 518
    invoke-virtual {v1}, Ljava/lang/InternalError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    .line 519
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {p0, v2, v1}, Lorg/java_websocket/client/WebSocketClient;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 520
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    return-void

    .line 523
    :cond_8
    throw v1

    :catch_4
    move-exception v1

    .line 511
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {p0, v2, v1}, Lorg/java_websocket/client/WebSocketClient;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 512
    iget-object v2, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 952
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public send([B)V
    .locals 1

    .line 454
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->send([B)V

    return-void
.end method

.method public sendFragmentedFrame(Lorg/java_websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 907
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;->sendFragmentedFrame(Lorg/java_websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public sendFrame(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->sendFrame(Ljava/util/Collection;)V

    return-void
.end method

.method public sendFrame(Lorg/java_websocket/framing/Framedata;)V
    .locals 1

    .line 957
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->sendFrame(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public sendPing()V
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Lorg/java_websocket/WebSocketImpl;->sendPing()V

    return-void
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->engine:Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lorg/java_websocket/WebSocketImpl;->setAttachment(Ljava/lang/Object;)V

    return-void
.end method

.method public setDnsResolver(Lorg/java_websocket/client/DnsResolver;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->dnsResolver:Lorg/java_websocket/client/DnsResolver;

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 877
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    return-void

    .line 875
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 889
    iget-object v0, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 892
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return-void

    .line 890
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "socket has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lorg/java_websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    return-void
.end method

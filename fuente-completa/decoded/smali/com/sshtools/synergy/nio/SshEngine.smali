.class public Lcom/sshtools/synergy/nio/SshEngine;
.super Ljava/lang/Object;
.source "SshEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/synergy/nio/SshEngine$ConnectSelectorThread;,
        Lcom/sshtools/synergy/nio/SshEngine$TransferSelectorThread;,
        Lcom/sshtools/synergy/nio/SshEngine$AcceptSelectorThread;,
        Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;,
        Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;,
        Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;
    }
.end annotation


# static fields
.field private static final CONNECT:I = 0x1

.field private static final NULL_TERMINATION:I = 0x0

.field private static final SOCKS4:I = 0x4

.field private static final SOCKS5:I = 0x5

.field private static final SOCKSV4_ERROR:[Ljava/lang/String;

.field private static final SOCKSV5_ERROR:[Ljava/lang/String;

.field static defaultInstance:Lcom/sshtools/synergy/nio/SshEngine;

.field protected static final hexArray:[C

.field private static version:Ljava/lang/String;


# instance fields
.field acceptThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

.field acceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;",
            ">;"
        }
    .end annotation
.end field

.field connectThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

.field context:Lcom/sshtools/synergy/nio/SshEngineContext;

.field isStarting:Z

.field lastError:Ljava/lang/Throwable;

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/synergy/nio/SshEngineListener;",
            ">;"
        }
    .end annotation
.end field

.field listeningInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/synergy/nio/ListeningInterface;",
            ">;"
        }
    .end annotation
.end field

.field lock:Ljava/lang/Object;

.field shutdownFuture:Lcom/sshtools/common/ssh/AbstractRequestFuture;

.field shutdownHook:Ljava/lang/Thread;

.field shutdownHooks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field started:Z

.field startupRequiresListeningInterfaces:Z

.field transferThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;


# direct methods
.method static bridge synthetic -$$Nest$mregisterClientConnection(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ConnectRequestFuture;)Lcom/sshtools/synergy/nio/ProtocolEngine;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sshtools/synergy/nio/SshEngine;->registerClientConnection(Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ConnectRequestFuture;)Lcom/sshtools/synergy/nio/ProtocolEngine;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 85
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sshtools/synergy/nio/SshEngine;->hexArray:[C

    const/16 v0, 0x9

    .line 87
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Success"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "General SOCKS server failure"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Connection not allowed by ruleset"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "Network unreachable"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v6, "Host unreachable"

    aput-object v6, v0, v1

    const/4 v1, 0x5

    const-string v6, "Connection refused"

    aput-object v6, v0, v1

    const/4 v1, 0x6

    const-string v6, "TTL expired"

    aput-object v6, v0, v1

    const/4 v1, 0x7

    const-string v6, "Command not supported"

    aput-object v6, v0, v1

    const/16 v1, 0x8

    const-string v6, "Address type not supported"

    aput-object v6, v0, v1

    sput-object v0, Lcom/sshtools/synergy/nio/SshEngine;->SOCKSV5_ERROR:[Ljava/lang/String;

    .line 94
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Request rejected or failed"

    aput-object v1, v0, v2

    const-string v1, "SOCKS server cannot connect to identd on the client"

    aput-object v1, v0, v3

    const-string v1, "The client program and identd report different user-ids"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sshtools/synergy/nio/SshEngine;->SOCKSV4_ERROR:[Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/sshtools/synergy/nio/PomVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sshtools/synergy/nio/SshEngine;->version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x1

    const/16 v3, 0x32

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->acceptors:Ljava/util/Map;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->isStarting:Z

    .line 77
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->startupRequiresListeningInterfaces:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeningInterfaces:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownHooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->lastError:Ljava/lang/Throwable;

    .line 81
    new-instance v0, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownFuture:Lcom/sshtools/common/ssh/AbstractRequestFuture;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->lock:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    .line 109
    new-instance v0, Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-direct {v0, p0}, Lcom/sshtools/synergy/nio/SshEngineContext;-><init>(Lcom/sshtools/synergy/nio/SshEngine;)V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    return-void
.end method

.method public static getDefaultInstance()Lcom/sshtools/synergy/nio/SshEngine;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1189
    const-class v0, Lcom/sshtools/synergy/nio/SshEngine;

    monitor-enter v0

    .line 1190
    :try_start_0
    sget-object v1, Lcom/sshtools/synergy/nio/SshEngine;->defaultInstance:Lcom/sshtools/synergy/nio/SshEngine;

    if-nez v1, :cond_1

    .line 1191
    new-instance v1, Lcom/sshtools/synergy/nio/SshEngine;

    invoke-direct {v1}, Lcom/sshtools/synergy/nio/SshEngine;-><init>()V

    sput-object v1, Lcom/sshtools/synergy/nio/SshEngine;->defaultInstance:Lcom/sshtools/synergy/nio/SshEngine;

    .line 1192
    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngine;->startup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1195
    sget-object v1, Lcom/sshtools/synergy/nio/SshEngine;->defaultInstance:Lcom/sshtools/synergy/nio/SshEngine;

    monitor-exit v0

    return-object v1

    .line 1193
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to start SSH engine"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1198
    :cond_1
    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngine;->isStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1199
    sget-object v1, Lcom/sshtools/synergy/nio/SshEngine;->defaultInstance:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngine;->startup()Z

    .line 1201
    :cond_2
    sget-object v1, Lcom/sshtools/synergy/nio/SshEngine;->defaultInstance:Lcom/sshtools/synergy/nio/SshEngine;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1202
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getReleaseDate()Ljava/util/Date;
    .locals 3

    .line 151
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x19a975c35d4L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 142
    sget-object v0, Lcom/sshtools/synergy/nio/SshEngine;->version:Ljava/lang/String;

    return-object v0
.end method

.method private isHTTPResponseComplete(Ljava/nio/ByteBuffer;)Z
    .locals 4

    .line 591
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 593
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    .line 594
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 595
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 596
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v2, :cond_0

    .line 597
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v3, :cond_0

    move v1, v2

    .line 599
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return v1
.end method

.method private readByte(Ljava/nio/channels/SocketChannel;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 623
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 624
    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 631
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    return p1

    .line 629
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexecpted zero bytes returned from socket"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 626
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Socket disconnected whilst expecting data"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private registerClientConnection(Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ConnectRequestFuture;)Lcom/sshtools/synergy/nio/ProtocolEngine;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/sshtools/synergy/nio/ProtocolContext;",
            ">(TK;",
            "Ljava/nio/channels/SocketChannel;",
            "Lcom/sshtools/synergy/nio/ConnectRequestFuture;",
            ")",
            "Lcom/sshtools/synergy/nio/ProtocolEngine;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ProtocolContext;->getSocketConnectionFactory()Lcom/sshtools/synergy/nio/SocketConnectionFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 840
    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 841
    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 838
    invoke-interface {v0, v1, v2, v3}, Lcom/sshtools/synergy/nio/SocketConnectionFactory;->createSocketConnection(Lcom/sshtools/synergy/nio/SshEngineContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/sshtools/synergy/nio/SocketConnection;

    move-result-object v0

    .line 842
    invoke-virtual {p1, p3}, Lcom/sshtools/synergy/nio/ProtocolContext;->createEngine(Lcom/sshtools/synergy/nio/ConnectRequestFuture;)Lcom/sshtools/synergy/nio/ProtocolEngine;

    move-result-object p1

    .line 843
    invoke-interface {v0, p1, p0, p2}, Lcom/sshtools/synergy/nio/SocketHandler;->initialize(Lcom/sshtools/synergy/nio/ProtocolEngine;Lcom/sshtools/synergy/nio/SshEngine;Ljava/nio/channels/SelectableChannel;)V

    .line 844
    invoke-virtual {p0, v0, p2}, Lcom/sshtools/synergy/nio/SshEngine;->registerHandler(Lcom/sshtools/synergy/nio/SocketHandler;Ljava/nio/channels/SelectableChannel;)V

    return-object p1
.end method

.method private sendHTTPProxyRequest(Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Connecting via HTTP proxy {}:{}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    :cond_0
    new-instance v0, Lcom/sshtools/common/net/HttpRequest;

    invoke-direct {v0}, Lcom/sshtools/common/net/HttpRequest;-><init>()V

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CONNECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " HTTP/1.0"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/sshtools/common/net/HttpRequest;->setHeaderBegin(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getUserAgent()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/sshtools/synergy/nio/SshEngine;->version:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MaverickSynergy/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/sshtools/common/util/Utils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "User-Agent"

    invoke-virtual {v0, p4, p3}, Lcom/sshtools/common/net/HttpRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string p3, "Pragma"

    const-string p4, "No-Cache"

    invoke-virtual {v0, p3, p4}, Lcom/sshtools/common/net/HttpRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string p3, "Host"

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyHostname()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Lcom/sshtools/common/net/HttpRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string p3, "Proxy-Connection"

    const-string p4, "Keep-Alive"

    invoke-virtual {v0, p3, p4}, Lcom/sshtools/common/net/HttpRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyUsername()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sshtools/common/util/Utils;->isNotBlank(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyPassword()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sshtools/common/util/Utils;->isNotBlank(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 566
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyUsername()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyPassword()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lcom/sshtools/common/net/HttpRequest;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_1
    invoke-virtual {v0}, Lcom/sshtools/common/net/HttpRequest;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    const/16 p2, 0x1000

    .line 573
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 576
    :cond_2
    invoke-virtual {p1, p2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p3

    const/4 p4, -0x1

    if-le p3, p4, :cond_3

    .line 577
    invoke-direct {p0, p2}, Lcom/sshtools/synergy/nio/SshEngine;->isHTTPResponseComplete(Ljava/nio/ByteBuffer;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 579
    :cond_3
    new-instance p1, Lcom/sshtools/common/net/HttpResponse;

    invoke-direct {p1}, Lcom/sshtools/common/net/HttpResponse;-><init>()V

    .line 580
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    .line 582
    invoke-virtual {p1, p2}, Lcom/sshtools/common/net/HttpResponse;->process(Ljava/nio/ByteBuffer;)V

    .line 584
    invoke-virtual {p1}, Lcom/sshtools/common/net/HttpResponse;->getStatus()I

    move-result p2

    const/16 p3, 0xc8

    if-ne p2, p3, :cond_4

    return-void

    .line 585
    :cond_4
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/common/net/HttpResponse;->getStartLine()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid HTTP proxy response! "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private sendSOCKS4ProxyRequest(Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Connecting via SOCKS4 proxy {}:{}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    :cond_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p3

    const/16 v0, 0x400

    .line 642
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x4

    .line 644
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    .line 645
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 646
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    .line 647
    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 648
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 649
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyUsername()Ljava/lang/String;

    move-result-object p3

    const-string p4, "UTF-8"

    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    .line 650
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 652
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p4

    check-cast p4, Ljava/nio/ByteBuffer;

    .line 654
    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 656
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/nio/SshEngine;->readByte(Ljava/nio/channels/SocketChannel;)I

    move-result p4

    if-nez p4, :cond_5

    .line 663
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/nio/SshEngine;->readByte(Ljava/nio/channels/SocketChannel;)I

    move-result p2

    const/16 p4, 0x5a

    if-eq p2, p4, :cond_2

    .line 666
    const-string p1, "SOCKS4 server unable to connect, reason: "

    if-le p2, p4, :cond_1

    const/16 p3, 0x5d

    if-ge p2, p3, :cond_1

    .line 667
    new-instance p3, Ljava/io/IOException;

    sget-object p4, Lcom/sshtools/synergy/nio/SshEngine;->SOCKSV4_ERROR:[Ljava/lang/String;

    add-int/lit8 p2, p2, -0x5b

    aget-object p2, p4, p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 671
    :cond_1
    new-instance p3, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_2
    const/4 p2, 0x6

    .line 675
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    :cond_3
    :goto_0
    if-ge p3, p2, :cond_4

    .line 679
    invoke-virtual {p1, p4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lez v0, :cond_3

    add-int/2addr p3, v0

    goto :goto_0

    :cond_4
    return-void

    .line 659
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 660
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyHostname()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyPort()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid response from SOCKS4 server ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ") "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ":"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendSOCKS5ProxyRequest(Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/lang/String;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "Can\'t do local lookup on: "

    .line 690
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 691
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyHostname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Connecting via SOCKS5 proxy {}:{}"

    invoke-static {v5, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v4, 0x4

    .line 694
    new-array v5, v4, [B

    fill-array-data v5, :array_0

    .line 698
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 700
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/synergy/nio/SshEngine;->readByte(Ljava/nio/channels/SocketChannel;)I

    move-result v5

    .line 702
    const-string v6, ":"

    const-string v7, ") "

    const-string v8, "Invalid response from SOCKS5 server ("

    const/4 v9, 0x5

    if-ne v5, v9, :cond_d

    .line 708
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/synergy/nio/SshEngine;->readByte(Ljava/nio/channels/SocketChannel;)I

    move-result v5

    .line 710
    const-string v10, "UTF-8"

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v5, :cond_5

    if-ne v5, v11, :cond_4

    .line 716
    new-instance v5, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v5}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 717
    :try_start_0
    invoke-virtual {v5, v12}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 719
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyUsername()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 720
    array-length v14, v13

    invoke-virtual {v5, v14}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 721
    invoke-virtual {v5, v13}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    .line 723
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyPassword()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 724
    array-length v14, v13

    invoke-virtual {v5, v14}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 725
    invoke-virtual {v5, v13}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    .line 727
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v13

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 730
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/synergy/nio/SshEngine;->readByte(Ljava/nio/channels/SocketChannel;)I

    move-result v5

    if-eq v5, v12, :cond_2

    if-ne v5, v9, :cond_1

    goto :goto_0

    .line 733
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 734
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyPort()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/synergy/nio/SshEngine;->readByte(Ljava/nio/channels/SocketChannel;)I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 738
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid username/password for SOCKS5 server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 716
    :try_start_1
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    .line 743
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SOCKS5 server does not support our authentication methods"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_5
    :goto_2
    new-instance v5, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v5}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 748
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->isResolveLocally()Z

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v13, :cond_6

    .line 752
    :try_start_3
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 758
    :try_start_4
    new-array v3, v4, [B

    fill-array-data v3, :array_1

    .line 762
    invoke-virtual {v5, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    .line 763
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    goto :goto_3

    .line 754
    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", try socks5 without local lookup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_6
    new-array v3, v4, [B

    fill-array-data v3, :array_2

    .line 769
    invoke-virtual {v5, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    .line 770
    invoke-virtual {v1, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 771
    array-length v3, v1

    invoke-virtual {v5, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 772
    invoke-virtual {v5, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    :goto_3
    ushr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 776
    invoke-virtual {v5, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    and-int/lit16 v1, v2, 0xff

    .line 777
    invoke-virtual {v5, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 779
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 780
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 782
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/synergy/nio/SshEngine;->readByte(Ljava/nio/channels/SocketChannel;)I

    move-result v1

    if-ne v1, v9, :cond_c

    .line 789
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/synergy/nio/SshEngine;->readByte(Ljava/nio/channels/SocketChannel;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 792
    const-string v0, "SOCKS5 server unable to connect, reason: "

    if-lez v1, :cond_7

    const/16 v2, 0x9

    if-ge v1, v2, :cond_7

    .line 793
    new-instance v2, Ljava/io/IOException;

    sget-object v3, Lcom/sshtools/synergy/nio/SshEngine;->SOCKSV5_ERROR:[Ljava/lang/String;

    aget-object v1, v3, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 797
    :cond_7
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 801
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/synergy/nio/SshEngine;->readByte(Ljava/nio/channels/SocketChannel;)I

    .line 803
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/synergy/nio/SshEngine;->readByte(Ljava/nio/channels/SocketChannel;)I

    move-result v1

    if-eq v1, v12, :cond_a

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 813
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/synergy/nio/SshEngine;->readByte(Ljava/nio/channels/SocketChannel;)I

    move-result v1

    .line 814
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    goto :goto_4

    .line 819
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SOCKS5 gave unsupported address type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_a
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 823
    :goto_4
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ne v0, v11, :cond_b

    return-void

    .line 824
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SOCKS5 error reading port"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 786
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyPort()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 747
    :try_start_5
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1

    .line 703
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 704
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyHostname()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyPort()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x5t
        0x2t
        0x0t
        0x2t
    .end array-data

    :array_1
    .array-data 1
        0x5t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x5t
        0x1t
        0x0t
        0x3t
    .end array-data
.end method


# virtual methods
.method public addListener(Lcom/sshtools/synergy/nio/SshEngineListener;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addShutdownHook(Ljava/lang/Runnable;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownHooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public connect(Ljava/lang/String;ILcom/sshtools/synergy/nio/ProtocolContext;J)Lcom/sshtools/synergy/nio/ConnectRequestFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/sshtools/synergy/nio/ProtocolContext;",
            ">(",
            "Ljava/lang/String;",
            "ITK;J)",
            "Lcom/sshtools/synergy/nio/ConnectRequestFuture;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    const/4 v1, 0x1

    .line 525
    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 526
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 530
    sget-object v2, Lcom/sshtools/synergy/nio/SshEngine$4;->$SwitchMap$com$sshtools$common$net$ProxyType:[I

    invoke-virtual {p3}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyType()Lcom/sshtools/common/net/ProxyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/net/ProxyType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_0

    .line 536
    new-instance v1, Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    invoke-virtual {p3}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;-><init>(Ljava/lang/String;I)V

    .line 537
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p3}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyHostname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    long-to-int p4, p4

    invoke-virtual {v2, v3, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_0

    .line 532
    :cond_0
    new-instance v1, Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    invoke-direct {v1, p1, p2}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;-><init>(Ljava/lang/String;I)V

    .line 533
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    long-to-int p4, p4

    invoke-virtual {v2, v3, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 540
    :goto_0
    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/sshtools/synergy/nio/SshEngine;->processOpenSocket(Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;

    const/4 p1, 0x0

    .line 541
    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 542
    invoke-direct {p0, p3, v0, v1}, Lcom/sshtools/synergy/nio/SshEngine;->registerClientConnection(Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ConnectRequestFuture;)Lcom/sshtools/synergy/nio/ProtocolEngine;

    return-object v1
.end method

.method protected getBooleanValue(Ljava/util/Properties;Ljava/lang/String;Z)Z
    .locals 1

    .line 173
    invoke-virtual {p1, p2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return p3
.end method

.method public getContext()Lcom/sshtools/synergy/nio/SshEngineContext;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    return-object v0
.end method

.method protected getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I
    .locals 1

    .line 163
    invoke-virtual {p1, p2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return p3
.end method

.method public getLastError()Ljava/lang/Throwable;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->lastError:Ljava/lang/Throwable;

    return-object v0
.end method

.method protected getLongValue(Ljava/util/Properties;Ljava/lang/String;J)J
    .locals 1

    .line 183
    invoke-virtual {p1, p2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    :cond_0
    return-wide p3
.end method

.method public getShutdownFuture()Lcom/sshtools/common/ssh/AbstractRequestFuture;
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownFuture:Lcom/sshtools/common/ssh/AbstractRequestFuture;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->started:Z

    return v0
.end method

.method public isStarting()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->isStarting:Z

    return v0
.end method

.method public isStartupRequiresListeningInterfaces()Z
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->startupRequiresListeningInterfaces:Z

    return v0
.end method

.method protected processOpenSocket(Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    sget-object v0, Lcom/sshtools/synergy/nio/SshEngine$4;->$SwitchMap$com$sshtools$common$net$ProxyType:[I

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getProxyType()Lcom/sshtools/common/net/ProxyType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/net/ProxyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-object p1

    .line 614
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sshtools/synergy/nio/SshEngine;->sendSOCKS5ProxyRequest(Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/lang/String;I)V

    return-object p1

    .line 611
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sshtools/synergy/nio/SshEngine;->sendSOCKS4ProxyRequest(Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/lang/String;I)V

    return-object p1

    .line 608
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sshtools/synergy/nio/SshEngine;->sendHTTPProxyRequest(Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/lang/String;I)V

    return-object p1
.end method

.method public registerAcceptor(Lcom/sshtools/synergy/nio/ClientAcceptor;Ljava/nio/channels/ServerSocketChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->acceptThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/sshtools/synergy/nio/SelectorThreadPool;->register(Ljava/nio/channels/ServerSocketChannel;ILcom/sshtools/synergy/nio/ClientAcceptor;Z)V

    return-void
.end method

.method public registerConnector(Lcom/sshtools/synergy/nio/ClientConnector;Ljava/nio/channels/SocketChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->connectThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SelectorThreadPool;->selectNextThread()Lcom/sshtools/synergy/nio/SelectorThread;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 862
    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/sshtools/synergy/nio/SelectorThread;->register(Ljava/nio/channels/SelectableChannel;ILjava/lang/Object;Z)Z

    return-void
.end method

.method public registerHandler(Lcom/sshtools/synergy/nio/SocketHandler;Ljava/nio/channels/SelectableChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->transferThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SelectorThreadPool;->selectNextThread()Lcom/sshtools/synergy/nio/SelectorThread;

    move-result-object v0

    .line 894
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/synergy/nio/SshEngine;->registerHandler(Lcom/sshtools/synergy/nio/SocketHandler;Ljava/nio/channels/SelectableChannel;Lcom/sshtools/synergy/nio/SelectorThread;)V

    return-void
.end method

.method public registerHandler(Lcom/sshtools/synergy/nio/SocketHandler;Ljava/nio/channels/SelectableChannel;Lcom/sshtools/synergy/nio/SelectorThread;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 912
    invoke-interface {p1, p3}, Lcom/sshtools/synergy/nio/SocketHandler;->setThread(Lcom/sshtools/synergy/nio/SelectorThread;)V

    if-eqz p3, :cond_0

    .line 915
    invoke-interface {p1}, Lcom/sshtools/synergy/nio/SocketHandler;->getInitialOps()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, p2, v0, p1, v1}, Lcom/sshtools/synergy/nio/SelectorThread;->register(Ljava/nio/channels/SelectableChannel;ILjava/lang/Object;Z)Z

    return-void

    .line 914
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to allocate thread"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAcceptor(Lcom/sshtools/synergy/nio/ListeningInterface;)V
    .locals 3

    .line 378
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ListeningInterface;->getAddressToBind()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing interface "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->acceptors:Ljava/util/Map;

    .line 382
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ListeningInterface;->getAddressToBind()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;

    if-eqz v0, :cond_1

    .line 386
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;->stopAccepting()V

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeningInterfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 391
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/synergy/nio/SshEngineListener;

    .line 392
    invoke-interface {v1, p0, p1}, Lcom/sshtools/synergy/nio/SshEngineListener;->interfaceStopped(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/synergy/nio/ListeningInterface;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 396
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SshEngineListener;

    .line 397
    invoke-interface {v2, p0, p1, v0}, Lcom/sshtools/synergy/nio/SshEngineListener;->interfaceCannotStop(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/synergy/nio/ListeningInterface;Ljava/io/IOException;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeListener(Lcom/sshtools/synergy/nio/SshEngineListener;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public restart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 511
    invoke-virtual {p0, v0, v1, v2}, Lcom/sshtools/synergy/nio/SshEngine;->restart(ZJ)V

    return-void
.end method

.method public restart(ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/synergy/nio/SshEngine;->shutdownNow(ZJ)V

    .line 517
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SshEngine;->startup()Z

    return-void
.end method

.method public setStartupRequiresListeningInterfaces(Z)V
    .locals 0

    .line 834
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->startupRequiresListeningInterfaces:Z

    return-void
.end method

.method public shutdownAndExit()V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 506
    invoke-virtual {p0, v0, v1, v2}, Lcom/sshtools/synergy/nio/SshEngine;->shutdownNow(ZJ)V

    .line 507
    invoke-static {}, Lcom/sshtools/common/logger/Log;->getDefaultContext()Lcom/sshtools/common/logger/RootLoggerContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/logger/RootLoggerContext;->shutdown()V

    return-void
.end method

.method public shutdownAsync(ZJ)V
    .locals 1

    .line 415
    new-instance v0, Lcom/sshtools/synergy/nio/SshEngine$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sshtools/synergy/nio/SshEngine$3;-><init>(Lcom/sshtools/synergy/nio/SshEngine;ZJ)V

    .line 420
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public shutdownNow(ZJ)V
    .locals 7

    .line 429
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    :try_start_0
    iget-object v3, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sshtools/synergy/nio/SshEngineListener;

    .line 433
    invoke-interface {v4, p0}, Lcom/sshtools/synergy/nio/SshEngineListener;->shuttingDown(Lcom/sshtools/synergy/nio/SshEngine;)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object v3, p0, Lcom/sshtools/synergy/nio/SshEngine;->acceptThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    if-eqz v3, :cond_1

    .line 438
    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SelectorThreadPool;->shutdown()V

    .line 440
    :cond_1
    iget-object v3, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeningInterfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sshtools/synergy/nio/ListeningInterface;

    .line 441
    iget-object v5, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sshtools/synergy/nio/SshEngineListener;

    .line 442
    invoke-interface {v6, p0, v4}, Lcom/sshtools/synergy/nio/SshEngineListener;->interfaceStopped(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/synergy/nio/ListeningInterface;)V

    goto :goto_1

    .line 446
    :cond_3
    iget-object v3, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeningInterfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_5

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 452
    :cond_4
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->transferThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/SelectorThreadPool;->getCurrentLoad()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez p1, :cond_5

    const-wide/16 v5, 0x3e8

    .line 454
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    const-wide/16 v5, 0x0

    cmp-long p1, p2, v5

    if-lez p1, :cond_4

    .line 459
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long p1, v5, p2

    if-lez p1, :cond_4

    .line 465
    :cond_5
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->transferThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    if-eqz p1, :cond_6

    .line 466
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/SelectorThreadPool;->closeAllChannels()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    const/4 p1, 0x0

    .line 470
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownHook:Ljava/lang/Thread;

    if-eqz p2, :cond_7

    .line 471
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    iget-object p3, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownHook:Ljava/lang/Thread;

    invoke-virtual {p2, p3}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 474
    :cond_7
    :try_start_4
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownHook:Ljava/lang/Thread;

    .line 476
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/synergy/nio/SshEngineListener;

    .line 477
    invoke-interface {p2, p0}, Lcom/sshtools/synergy/nio/SshEngineListener;->shutdown(Lcom/sshtools/synergy/nio/SshEngine;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 474
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownHook:Ljava/lang/Thread;

    .line 476
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sshtools/synergy/nio/SshEngineListener;

    .line 477
    invoke-interface {p3, p0}, Lcom/sshtools/synergy/nio/SshEngineListener;->shutdown(Lcom/sshtools/synergy/nio/SshEngine;)V

    goto :goto_3

    .line 479
    :cond_8
    throw p2

    .line 474
    :catch_1
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownHook:Ljava/lang/Thread;

    .line 476
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/synergy/nio/SshEngineListener;

    .line 477
    invoke-interface {p2, p0}, Lcom/sshtools/synergy/nio/SshEngineListener;->shutdown(Lcom/sshtools/synergy/nio/SshEngine;)V

    goto :goto_4

    .line 482
    :cond_9
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownHooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz p1, :cond_a

    .line 483
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_2
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 485
    :try_start_5
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 491
    :cond_a
    :try_start_6
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->connectThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    if-eqz p1, :cond_b

    .line 492
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/SelectorThreadPool;->shutdown()V

    .line 494
    :cond_b
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->transferThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    if-eqz p1, :cond_c

    .line 495
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/SelectorThreadPool;->shutdown()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 499
    :cond_c
    :try_start_7
    iput-boolean v2, p0, Lcom/sshtools/synergy/nio/SshEngine;->started:Z

    .line 500
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownFuture:Lcom/sshtools/common/ssh/AbstractRequestFuture;

    invoke-virtual {p1, v1}, Lcom/sshtools/common/ssh/AbstractRequestFuture;->done(Z)V

    .line 502
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 499
    iput-boolean v2, p0, Lcom/sshtools/synergy/nio/SshEngine;->started:Z

    .line 500
    iget-object p2, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownFuture:Lcom/sshtools/common/ssh/AbstractRequestFuture;

    invoke-virtual {p2, v1}, Lcom/sshtools/common/ssh/AbstractRequestFuture;->done(Z)V

    .line 501
    throw p1

    :catchall_2
    move-exception p1

    .line 502
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1
.end method

.method protected startListeningInterface(Lcom/sshtools/synergy/nio/ListeningInterface;)Z
    .locals 5

    .line 323
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ListeningInterface;->getAddressToBind()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Binding server to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 324
    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getSelectorProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    .line 331
    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 333
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v2

    .line 334
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ListeningInterface;->getSocketOptionReuseAddress()Z

    move-result v3

    .line 333
    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 336
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v2

    .line 338
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ListeningInterface;->getAddressToBind()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ListeningInterface;->getBacklog()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 340
    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sshtools/synergy/nio/ListeningInterface;->setActualPort(I)V

    .line 341
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ListeningInterface;->getSocketOptionReuseAddress()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 343
    new-instance v2, Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;

    invoke-direct {v2, p0, p1, v0}, Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;-><init>(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/synergy/nio/ListeningInterface;Ljava/nio/channels/ServerSocketChannel;)V

    .line 346
    invoke-virtual {p0, v2, v0}, Lcom/sshtools/synergy/nio/SshEngine;->registerAcceptor(Lcom/sshtools/synergy/nio/ClientAcceptor;Ljava/nio/channels/ServerSocketChannel;)V

    .line 348
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->acceptors:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ListeningInterface;->getAddressToBind()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SshEngineListener;

    .line 351
    invoke-interface {v2, p0, p1}, Lcom/sshtools/synergy/nio/SshEngineListener;->interfaceStarted(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/synergy/nio/ListeningInterface;)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeningInterfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 360
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ListeningInterface;->getAddressToBind()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to bind to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 361
    invoke-static {v2, v0, v3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 364
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ListeningInterface;->getAddressToBind()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ListeningInterface;->getActualPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sshtools/synergy/nio/SshEngineContext;->removeListeningInterface(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    :catch_1
    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->lastError:Ljava/lang/Throwable;

    .line 368
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/synergy/nio/SshEngineListener;

    .line 369
    invoke-interface {v3, p0, p1, v0}, Lcom/sshtools/synergy/nio/SshEngineListener;->interfaceCannotStart(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/synergy/nio/ListeningInterface;Ljava/io/IOException;)V

    goto :goto_1

    :cond_3
    return v1
.end method

.method public startup()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sshtools/synergy/nio/SshEngine;->startup(Ljava/util/Properties;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startup(Ljava/util/Properties;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    .line 210
    :try_start_0
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->isStarting:Z

    const/4 v2, 0x0

    .line 211
    iput-object v2, p0, Lcom/sshtools/synergy/nio/SshEngine;->lastError:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 214
    :try_start_1
    iget-object v5, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sshtools/synergy/nio/SshEngineListener;

    .line 215
    invoke-interface {v6, p0}, Lcom/sshtools/synergy/nio/SshEngineListener;->starting(Lcom/sshtools/synergy/nio/SshEngine;)V

    goto :goto_0

    .line 218
    :cond_0
    new-instance v5, Lcom/sshtools/synergy/nio/SshEngine$1;

    invoke-direct {v5, p0, p1}, Lcom/sshtools/synergy/nio/SshEngine$1;-><init>(Lcom/sshtools/synergy/nio/SshEngine;Ljava/util/Properties;)V

    iput-object v5, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownHook:Ljava/lang/Thread;

    .line 227
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    sget-object v5, Lcom/sshtools/synergy/nio/SshEngine;->version:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Product version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    const-string v5, "java.version"

    .line 231
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Java version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    .line 230
    invoke-static {v5, v6}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    const-string v5, "os.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "os.arch"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    const-string v5, "Configuring SSH engine"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    const-string v5, "Configuration complete"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 243
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    iget-object v6, p0, Lcom/sshtools/synergy/nio/SshEngine;->shutdownHook:Ljava/lang/Thread;

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 245
    :cond_3
    new-instance v5, Lcom/sshtools/synergy/nio/SelectorThreadPool;

    new-instance v6, Lcom/sshtools/synergy/nio/SshEngine$ConnectSelectorThread;

    invoke-direct {v6, p0}, Lcom/sshtools/synergy/nio/SshEngine$ConnectSelectorThread;-><init>(Lcom/sshtools/synergy/nio/SshEngine;)V

    const-string v7, "maverick.config.connect.threads"

    iget-object v8, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 247
    invoke-virtual {v8}, Lcom/sshtools/synergy/nio/SshEngineContext;->getPermanentConnectThreads()I

    move-result v8

    invoke-virtual {p0, p1, v7, v8}, Lcom/sshtools/synergy/nio/SshEngine;->getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "maverick.config.channelsPerThread"

    iget-object v9, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 248
    invoke-virtual {v9}, Lcom/sshtools/synergy/nio/SshEngineContext;->getMaximumChannelsPerThread()I

    move-result v9

    invoke-virtual {p0, p1, v8, v9}, Lcom/sshtools/synergy/nio/SshEngine;->getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v8

    const-string v9, "maverick.config.idlePeriod"

    iget-object v10, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 249
    invoke-virtual {v10}, Lcom/sshtools/synergy/nio/SshEngineContext;->getIdleServiceRunPeriod()I

    move-result v10

    invoke-virtual {p0, p1, v9, v10}, Lcom/sshtools/synergy/nio/SshEngine;->getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v9

    const-string v10, "maverick.config.idleEvents"

    iget-object v11, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 250
    invoke-virtual {v11}, Lcom/sshtools/synergy/nio/SshEngineContext;->getInactiveServiceRunsPerIdleEvent()I

    move-result v11

    invoke-virtual {p0, p1, v10, v11}, Lcom/sshtools/synergy/nio/SshEngine;->getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 251
    invoke-virtual {v11}, Lcom/sshtools/synergy/nio/SshEngineContext;->getSelectorProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/sshtools/synergy/nio/SelectorThreadPool;-><init>(Lcom/sshtools/synergy/nio/SelectorThreadImpl;IIIILjava/nio/channels/spi/SelectorProvider;)V

    iput-object v5, p0, Lcom/sshtools/synergy/nio/SshEngine;->connectThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    .line 253
    new-instance v6, Lcom/sshtools/synergy/nio/SelectorThreadPool;

    new-instance v7, Lcom/sshtools/synergy/nio/SshEngine$TransferSelectorThread;

    invoke-direct {v7, p0}, Lcom/sshtools/synergy/nio/SshEngine$TransferSelectorThread;-><init>(Lcom/sshtools/synergy/nio/SshEngine;)V

    const-string v5, "maverick.config.transfer.threads"

    iget-object v8, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 255
    invoke-virtual {v8}, Lcom/sshtools/synergy/nio/SshEngineContext;->getPermanentTransferThreads()I

    move-result v8

    invoke-virtual {p0, p1, v5, v8}, Lcom/sshtools/synergy/nio/SshEngine;->getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v8

    const-string v5, "maverick.config.channelsPerThread"

    iget-object v9, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 256
    invoke-virtual {v9}, Lcom/sshtools/synergy/nio/SshEngineContext;->getMaximumChannelsPerThread()I

    move-result v9

    invoke-virtual {p0, p1, v5, v9}, Lcom/sshtools/synergy/nio/SshEngine;->getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v9

    const-string v5, "maverick.config.idlePeriod"

    iget-object v10, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 257
    invoke-virtual {v10}, Lcom/sshtools/synergy/nio/SshEngineContext;->getIdleServiceRunPeriod()I

    move-result v10

    invoke-virtual {p0, p1, v5, v10}, Lcom/sshtools/synergy/nio/SshEngine;->getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v10

    const-string v5, "maverick.config.idleEvents"

    iget-object v11, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 258
    invoke-virtual {v11}, Lcom/sshtools/synergy/nio/SshEngineContext;->getInactiveServiceRunsPerIdleEvent()I

    move-result v11

    invoke-virtual {p0, p1, v5, v11}, Lcom/sshtools/synergy/nio/SshEngine;->getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v11

    iget-object v5, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 259
    invoke-virtual {v5}, Lcom/sshtools/synergy/nio/SshEngineContext;->getSelectorProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/sshtools/synergy/nio/SelectorThreadPool;-><init>(Lcom/sshtools/synergy/nio/SelectorThreadImpl;IIIILjava/nio/channels/spi/SelectorProvider;)V

    iput-object v6, p0, Lcom/sshtools/synergy/nio/SshEngine;->transferThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    .line 261
    new-instance v7, Lcom/sshtools/synergy/nio/SelectorThreadPool;

    new-instance v8, Lcom/sshtools/synergy/nio/SshEngine$AcceptSelectorThread;

    invoke-direct {v8, p0}, Lcom/sshtools/synergy/nio/SshEngine$AcceptSelectorThread;-><init>(Lcom/sshtools/synergy/nio/SshEngine;)V

    const-string v5, "maverick.config.accept.threads"

    iget-object v6, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 262
    invoke-virtual {v6}, Lcom/sshtools/synergy/nio/SshEngineContext;->getPermanentAcceptThreads()I

    move-result v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/sshtools/synergy/nio/SshEngine;->getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v9

    const-string v5, "maverick.config.channelsPerThread"

    iget-object v6, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 263
    invoke-virtual {v6}, Lcom/sshtools/synergy/nio/SshEngineContext;->getMaximumChannelsPerThread()I

    move-result v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/sshtools/synergy/nio/SshEngine;->getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v10

    const-string v5, "maverick.config.idlePeriod"

    iget-object v6, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 264
    invoke-virtual {v6}, Lcom/sshtools/synergy/nio/SshEngineContext;->getIdleServiceRunPeriod()I

    move-result v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/sshtools/synergy/nio/SshEngine;->getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v11

    const-string v5, "maverick.config.idleEvents"

    iget-object v6, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 265
    invoke-virtual {v6}, Lcom/sshtools/synergy/nio/SshEngineContext;->getInactiveServiceRunsPerIdleEvent()I

    move-result v6

    invoke-virtual {p0, p1, v5, v6}, Lcom/sshtools/synergy/nio/SshEngine;->getIntValue(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v12

    iget-object v5, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 266
    invoke-virtual {v5}, Lcom/sshtools/synergy/nio/SshEngineContext;->getSelectorProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lcom/sshtools/synergy/nio/SelectorThreadPool;-><init>(Lcom/sshtools/synergy/nio/SelectorThreadImpl;IIIILjava/nio/channels/spi/SelectorProvider;)V

    iput-object v7, p0, Lcom/sshtools/synergy/nio/SshEngine;->acceptThreads:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    .line 268
    iget-object v5, p0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v5}, Lcom/sshtools/synergy/nio/SshEngineContext;->getListeningInterfaces()[Lcom/sshtools/synergy/nio/ListeningInterface;

    move-result-object v5

    move v6, v4

    move v7, v6

    .line 271
    :goto_1
    array-length v8, v5

    if-ge v6, v8, :cond_5

    .line 272
    aget-object v8, v5, v6

    invoke-virtual {p0, v8}, Lcom/sshtools/synergy/nio/SshEngine;->startListeningInterface(Lcom/sshtools/synergy/nio/ListeningInterface;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v7, v7, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    if-nez v7, :cond_7

    .line 276
    iget-boolean v5, p0, Lcom/sshtools/synergy/nio/SshEngine;->startupRequiresListeningInterfaces:Z

    if-eqz v5, :cond_7

    .line 277
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 278
    const-string p1, "No listening interfaces were bound!"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :cond_6
    invoke-virtual {p0, v4, v2, v3}, Lcom/sshtools/synergy/nio/SshEngine;->shutdownNow(ZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :try_start_2
    iput-boolean v4, p0, Lcom/sshtools/synergy/nio/SshEngine;->isStarting:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v4

    .line 283
    :cond_7
    :try_start_3
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/SshEngine;->started:Z

    .line 285
    iget-object v5, p0, Lcom/sshtools/synergy/nio/SshEngine;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sshtools/synergy/nio/SshEngineListener;

    .line 286
    invoke-interface {v6, p0}, Lcom/sshtools/synergy/nio/SshEngineListener;->started(Lcom/sshtools/synergy/nio/SshEngine;)V

    goto :goto_2

    .line 289
    :cond_8
    const-string v5, "maverick.threadDump"

    invoke-virtual {p0, p1, v5, v4}, Lcom/sshtools/synergy/nio/SshEngine;->getBooleanValue(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 290
    new-instance v5, Lcom/sshtools/synergy/nio/SshEngine$2;

    const-string v6, "ThreadMonitor"

    invoke-direct {v5, p0, v6, p1}, Lcom/sshtools/synergy/nio/SshEngine$2;-><init>(Lcom/sshtools/synergy/nio/SshEngine;Ljava/lang/String;Ljava/util/Properties;)V

    .line 302
    invoke-virtual {v5}, Lcom/sshtools/synergy/nio/SshEngine$2;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    :cond_9
    :try_start_4
    iput-boolean v4, p0, Lcom/sshtools/synergy/nio/SshEngine;->isStarting:Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 307
    :try_start_5
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 308
    const-string v0, "The engine failed to start"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, p1, v5}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 309
    :cond_a
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine;->lastError:Ljava/lang/Throwable;

    .line 310
    invoke-virtual {p0, v4, v2, v3}, Lcom/sshtools/synergy/nio/SshEngine;->shutdownNow(ZJ)V

    .line 311
    instance-of v0, p1, Lcom/sshtools/synergy/nio/LicenseException;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_b

    .line 315
    :try_start_6
    iput-boolean v4, p0, Lcom/sshtools/synergy/nio/SshEngine;->isStarting:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return v4

    .line 312
    :cond_b
    :try_start_7
    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 315
    :try_start_8
    iput-boolean v4, p0, Lcom/sshtools/synergy/nio/SshEngine;->isStarting:Z

    .line 316
    throw p1

    :catchall_2
    move-exception v0

    move-object p1, v0

    .line 317
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.class Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;
.super Lorg/java_websocket/server/WebSocketServer;
.source "ProcessServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;
    }
.end annotation


# instance fields
.field private final cmd:[Ljava/lang/String;

.field private final readyLatch:Ljava/util/concurrent/CountDownLatch;

.field private final startError:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .locals 2

    .line 32
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "127.0.0.1"

    invoke-direct {v0, v1, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;)V

    .line 18
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->readyLatch:Ljava/util/concurrent/CountDownLatch;

    .line 19
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->startError:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    iput-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->cmd:[Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$onOpen$0(Ljava/io/InputStream;Lorg/java_websocket/WebSocket;)V
    .locals 3

    const/16 v0, 0x2000

    .line 70
    :try_start_0
    new-array v0, v0, [B

    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 73
    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/java_websocket/WebSocket;->send(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/16 p0, 0x3e8

    .line 76
    const-string v0, "process exited"

    invoke-interface {p1, p0, v0}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClose$1$com-foxdebug-acode-rk-exec-terminal-ProcessServer()V
    .locals 0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 105
    :try_start_0
    invoke-interface {p1}, Lorg/java_websocket/WebSocket;->getAttachment()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;->process:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :catch_0
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$$ExternalSyntheticLambda1;-><init>(Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->startError:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->readyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 2

    .line 96
    :try_start_0
    invoke-interface {p1}, Lorg/java_websocket/WebSocket;->getAttachment()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;

    .line 97
    iget-object v0, p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;->stdin:Ljava/io/OutputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 98
    iget-object p1, p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;->stdin:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 87
    :try_start_0
    invoke-interface {p1}, Lorg/java_websocket/WebSocket;->getAttachment()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;

    .line 88
    iget-object v0, p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;->stdin:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 89
    iget-object p1, p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;->stdin:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V
    .locals 3

    .line 62
    :try_start_0
    new-instance p2, Ljava/lang/ProcessBuilder;

    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->cmd:[Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p2

    .line 63
    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 64
    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;

    invoke-direct {v2, p2, v1}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;-><init>(Ljava/lang/Process;Ljava/io/OutputStream;)V

    invoke-interface {p1, v2}, Lorg/java_websocket/WebSocket;->setAttachment(Ljava/lang/Object;)V

    .line 68
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$$ExternalSyntheticLambda0;-><init>(Ljava/io/InputStream;Lorg/java_websocket/WebSocket;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start process: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x3f3

    invoke-interface {p1, v0, p2}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->readyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method startAndAwait()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->start()V

    .line 38
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->readyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 39
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->startError:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    throw v0
.end method

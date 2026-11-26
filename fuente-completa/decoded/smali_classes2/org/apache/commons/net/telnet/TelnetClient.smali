.class public Lorg/apache/commons/net/telnet/TelnetClient;
.super Lorg/apache/commons/net/telnet/Telnet;
.source "TelnetClient.java"


# static fields
.field private static final DEFAULT_MAX_SUBNEGOTIATION_LENGTH:I = 0x200


# instance fields
.field private input:Ljava/io/InputStream;

.field private inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;

.field final maxSubnegotiationLength:I

.field private output:Ljava/io/OutputStream;

.field protected readerThread:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    const-string v0, "VT100"

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/telnet/TelnetClient;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 75
    const-string v0, "VT100"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x200

    .line 84
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/telnet/TelnetClient;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->input:Ljava/io/InputStream;

    .line 98
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->output:Ljava/io/OutputStream;

    .line 99
    iput p2, p0, Lorg/apache/commons/net/telnet/TelnetClient;->maxSubnegotiationLength:I

    return-void
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->_connectAction_()V

    .line 110
    new-instance v0, Lorg/apache/commons/net/telnet/TelnetInputStream;

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_input_:Ljava/io/InputStream;

    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/commons/net/telnet/TelnetInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/telnet/TelnetClient;Z)V

    .line 111
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetInputStream;->start()V

    .line 120
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->input:Ljava/io/InputStream;

    .line 121
    new-instance v0, Lorg/apache/commons/net/telnet/TelnetOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/telnet/TelnetOutputStream;-><init>(Lorg/apache/commons/net/telnet/TelnetClient;)V

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->output:Ljava/io/OutputStream;

    return-void
.end method

.method public addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V

    return-void
.end method

.method closeOutputStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 142
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    .line 145
    throw v1
.end method

.method public deleteOptionHandler(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->deleteOptionHandler(I)V

    return-void
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 167
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->input:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V

    .line 168
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->output:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->output:Ljava/io/OutputStream;

    .line 171
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->input:Ljava/io/InputStream;

    .line 172
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->disconnect()V

    return-void

    :catchall_0
    move-exception v1

    .line 170
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->output:Ljava/io/OutputStream;

    .line 171
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->input:Ljava/io/InputStream;

    .line 172
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->disconnect()V

    .line 173
    throw v1
.end method

.method flushOutputStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->input:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalOptionState(I)Z
    .locals 1

    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->stateIsWill(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->requestedWill(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getReaderThread()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    return v0
.end method

.method public getRemoteOptionState(I)Z
    .locals 1

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->stateIsDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->requestedDo(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method notifyInputListener()V
    .locals 1

    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;

    .line 246
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Lorg/apache/commons/net/telnet/TelnetInputListener;->telnetInputAvailable()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 246
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized registerInputListener(Lorg/apache/commons/net/telnet/TelnetInputListener;)V
    .locals 0

    monitor-enter p0

    .line 270
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V

    return-void
.end method

.method public registerSpyStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 280
    invoke-super {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_registerSpyStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public sendAYT(J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    invoke-static {p1, p2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendAYT(Ljava/time/Duration;)Z

    move-result p1

    return p1
.end method

.method public sendAYT(Ljava/time/Duration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendAYT(Ljava/time/Duration;)Z

    move-result p1

    return p1
.end method

.method public sendCommand(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 327
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendCommand(B)V

    return-void
.end method

.method public sendSubnegotiation([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 345
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 348
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendSubnegotiation([I)V

    return-void

    .line 346
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "zero length message"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReaderThread(Z)V
    .locals 0

    .line 372
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetClient;->readerThread:Z

    return-void
.end method

.method public stopSpyStream()V
    .locals 0

    .line 379
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->_stopSpyStream()V

    return-void
.end method

.method public declared-synchronized unregisterInputListener()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 389
    :try_start_0
    iput-object v0, p0, Lorg/apache/commons/net/telnet/TelnetClient;->inputListener:Lorg/apache/commons/net/telnet/TelnetInputListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic unregisterNotifHandler()V
    .locals 0

    .line 38
    invoke-super {p0}, Lorg/apache/commons/net/telnet/Telnet;->unregisterNotifHandler()V

    return-void
.end method

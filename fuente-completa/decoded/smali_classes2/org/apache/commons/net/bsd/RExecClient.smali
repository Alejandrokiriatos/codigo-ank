.class public Lorg/apache/commons/net/bsd/RExecClient;
.super Lorg/apache/commons/net/SocketClient;
.source "RExecClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x200

.field protected static final NULL_CHAR:C


# instance fields
.field protected _errorStream_:Ljava/io/InputStream;

.field private remoteVerificationEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    const/16 v0, 0x200

    .line 81
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/bsd/RExecClient;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method createErrorStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 90
    iget-object v1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 91
    iget-object v1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 92
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 94
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->remoteVerificationEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/bsd/RExecClient;->verifyRemote(Ljava/net/Socket;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {v1}, Lorg/apache/commons/net/bsd/RExecClient;->getHostAddress(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 97
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security violation: unexpected connection attempt by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_2
    :goto_0
    new-instance v0, Lorg/apache/commons/net/io/SocketInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/io/SocketInputStream;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 88
    :try_start_1
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    .line 111
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_input_:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final isRemoteVerificationEnabled()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->remoteVerificationEnabled:Z

    return v0
.end method

.method public rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/bsd/RExecClient;->rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 188
    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->createErrorStream()Ljava/io/InputStream;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    goto :goto_0

    .line 190
    :cond_0
    iget-object p4, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 192
    :goto_0
    iget-object p4, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 193
    iget-object p1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 194
    iget-object p1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 195
    iget-object p1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 196
    iget-object p1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 197
    iget-object p1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 198
    iget-object p1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 199
    iget-object p1, p0, Lorg/apache/commons/net/bsd/RExecClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-lez p1, :cond_2

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    :goto_1
    iget-object p2, p0, Lorg/apache/commons/net/bsd/RExecClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    const/16 p3, 0xa

    if-eq p2, p3, :cond_1

    int-to-char p2, p2

    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 205
    :cond_1
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    if-ltz p1, :cond_3

    return-void

    .line 208
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Server closed connection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setRemoteVerificationEnabled(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lorg/apache/commons/net/bsd/RExecClient;->remoteVerificationEnabled:Z

    return-void
.end method

.class final Lorg/apache/commons/net/ftp/DeflateSocket;
.super Lorg/apache/commons/net/ftp/DelegateSocket;
.source "DeflateSocket.java"


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/DelegateSocket;-><init>(Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/DeflateSocket;->delegate:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/DeflateSocket;->delegate:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

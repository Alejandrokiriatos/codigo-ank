.class public final Lorg/apache/commons/net/daytime/DaytimeTCPClient;
.super Lorg/apache/commons/net/SocketClient;
.source "DaytimeTCPClient.java"


# static fields
.field public static final DEFAULT_PORT:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/16 v0, 0xd

    .line 43
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/daytime/DaytimeTCPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

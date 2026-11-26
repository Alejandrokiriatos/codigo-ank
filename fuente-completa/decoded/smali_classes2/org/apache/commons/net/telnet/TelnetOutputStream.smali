.class final Lorg/apache/commons/net/telnet/TelnetOutputStream;
.super Ljava/io/OutputStream;
.source "TelnetOutputStream.java"


# static fields
.field private static final CONVERT_TO_CRLF:Z = true


# instance fields
.field private final client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private lastWasCR:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/net/telnet/TelnetClient;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->closeOutputStream()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->flushOutputStream()V

    return-void
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v0

    const/16 v1, 0xff

    and-int/2addr p1, v1

    .line 96
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/telnet/TelnetClient;->requestedWont(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    const/16 v4, 0xa

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/telnet/TelnetClient;->sendByte(I)V

    if-ne p1, v4, :cond_0

    .line 102
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    .line 103
    monitor-exit v0

    return-void

    :cond_0
    const/16 v2, 0xd

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    .line 129
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->sendByte(I)V

    .line 130
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/telnet/TelnetClient;->sendByte(I)V

    .line 125
    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/telnet/TelnetClient;->sendByte(I)V

    .line 126
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    goto :goto_0

    .line 113
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {p1, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->sendByte(I)V

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    goto :goto_0

    .line 117
    :cond_3
    iget-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    if-nez v1, :cond_4

    .line 118
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->sendByte(I)V

    .line 120
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->sendByte(I)V

    .line 121
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->lastWasCR:Z

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    .line 135
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->sendByte(I)V

    .line 136
    iget-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/telnet/TelnetClient;->sendByte(I)V

    goto :goto_0

    .line 138
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->sendByte(I)V

    .line 140
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_0

    add-int/lit8 p3, p2, 0x1

    .line 78
    :try_start_0
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write(I)V

    move p2, p3

    move p3, v1

    goto :goto_0

    .line 80
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

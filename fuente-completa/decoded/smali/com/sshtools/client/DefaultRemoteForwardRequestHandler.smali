.class public Lcom/sshtools/client/DefaultRemoteForwardRequestHandler;
.super Ljava/lang/Object;
.source "DefaultRemoteForwardRequestHandler.java"

# interfaces
.implements Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler<",
        "Lcom/sshtools/client/SshClientContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHandled(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;)Z"
        }
    .end annotation

    const/4 p3, 0x0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    return p3

    .line 44
    :cond_0
    new-array p2, p3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/Path;->isAbsolute()Z

    move-result p2

    if-eqz p2, :cond_2

    new-array p2, p3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->isAbsolute()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public startRemoteForward(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-string v0, "Remote forwarding is now active on remote interface "

    const-string v1, "Remote forwarding on interface "

    .line 50
    :try_start_0
    new-instance v2, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v2}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 54
    new-instance v3, Lcom/sshtools/common/ssh/GlobalRequest;

    const-string v4, "tcpip-forward"

    invoke-virtual {p5}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sshtools/common/ssh/GlobalRequest;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;[B)V

    const-wide/32 v4, 0xea60

    .line 56
    invoke-virtual {p5, v3, v4, v5}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendGlobalRequestAndWait(Lcom/sshtools/common/ssh/GlobalRequest;J)V

    .line 58
    invoke-virtual {v3}, Lcom/sshtools/common/ssh/GlobalRequest;->isSuccess()Z

    move-result p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v4, ":"

    if-eqz p5, :cond_2

    .line 60
    :try_start_2
    invoke-virtual {v3}, Lcom/sshtools/common/ssh/GlobalRequest;->getData()[B

    move-result-object p5

    array-length p5, p5

    if-lez p5, :cond_0

    .line 61
    new-instance p2, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-virtual {v3}, Lcom/sshtools/common/ssh/GlobalRequest;->getData()[B

    move-result-object p5

    invoke-direct {p2, p5}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 62
    :try_start_3
    invoke-virtual {p2}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    long-to-int p5, v5

    .line 63
    :try_start_4
    invoke-virtual {p2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move p2, p5

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 61
    :try_start_5
    invoke-virtual {p2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    .line 66
    :cond_0
    :goto_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 67
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, " forwarding to "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 76
    :cond_1
    :try_start_7
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return p2

    .line 73
    :cond_2
    :try_start_8
    new-instance p3, Lcom/sshtools/common/ssh/SshException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xe

    invoke-direct {p3, p1, p2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    .line 50
    :try_start_9
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p1

    .line 77
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/4 p3, 0x5

    invoke-direct {p2, p3, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method public stopRemoteForward(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-string p3, "Remote forwarding cancelled on remote interface "

    const-string p4, "Cancel remote forwarding on interface "

    .line 85
    :try_start_0
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 89
    new-instance v1, Lcom/sshtools/common/ssh/GlobalRequest;

    const-string v2, "cancel-tcpip-forward"

    invoke-virtual {p5}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sshtools/common/ssh/GlobalRequest;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;[B)V

    const-wide/32 v2, 0xea60

    .line 91
    invoke-virtual {p5, v1, v2, v3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendGlobalRequestAndWait(Lcom/sshtools/common/ssh/GlobalRequest;J)V

    .line 93
    invoke-virtual {v1}, Lcom/sshtools/common/ssh/GlobalRequest;->isSuccess()Z

    move-result p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, ":"

    if-eqz p5, :cond_1

    .line 95
    :try_start_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 96
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 100
    :cond_1
    :try_start_4
    new-instance p3, Lcom/sshtools/common/ssh/SshException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xe

    invoke-direct {p3, p1, p2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 85
    :try_start_5
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 105
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/4 p3, 0x5

    invoke-direct {p2, p3, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

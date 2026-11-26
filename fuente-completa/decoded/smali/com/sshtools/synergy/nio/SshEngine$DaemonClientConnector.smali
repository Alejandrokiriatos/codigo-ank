.class Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;
.super Ljava/lang/Object;
.source "SshEngine.java"

# interfaces
.implements Lcom/sshtools/synergy/nio/ClientConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/nio/SshEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DaemonClientConnector"
.end annotation


# instance fields
.field connectFuture:Lcom/sshtools/synergy/nio/ConnectRequestFuture;

.field engine:Lcom/sshtools/synergy/nio/ProtocolEngine;

.field hostToConnect:Ljava/lang/String;

.field portToConnect:I

.field protocolContext:Lcom/sshtools/synergy/nio/ProtocolContext;

.field socketChannel:Ljava/nio/channels/SocketChannel;

.field final synthetic this$0:Lcom/sshtools/synergy/nio/SshEngine;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ConnectRequestFuture;Ljava/lang/String;I)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput-object p2, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->protocolContext:Lcom/sshtools/synergy/nio/ProtocolContext;

    .line 1044
    iput-object p3, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 1045
    iput-object p4, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->connectFuture:Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    .line 1046
    iput-object p5, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->hostToConnect:Ljava/lang/String;

    .line 1047
    iput p6, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->portToConnect:I

    return-void
.end method


# virtual methods
.method public finishConnect(Ljava/nio/channels/SelectionKey;)Z
    .locals 5

    .line 1058
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->protocolContext:Lcom/sshtools/synergy/nio/ProtocolContext;

    iget-object v3, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->hostToConnect:Ljava/lang/String;

    iget v4, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->portToConnect:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sshtools/synergy/nio/SshEngine;->processOpenSocket(Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;

    .line 1062
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->protocolContext:Lcom/sshtools/synergy/nio/ProtocolContext;

    iget-object v2, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->connectFuture:Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    invoke-static {v0, v1, v2, v3}, Lcom/sshtools/synergy/nio/SshEngine;->-$$Nest$mregisterClientConnection(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/synergy/nio/ProtocolContext;Ljava/nio/channels/SocketChannel;Lcom/sshtools/synergy/nio/ConnectRequestFuture;)Lcom/sshtools/synergy/nio/ProtocolEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$DaemonClientConnector;->engine:Lcom/sshtools/synergy/nio/ProtocolEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1065
    :try_start_1
    const-string v1, "Failed to connect socket"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1068
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    return v2

    :goto_1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 1069
    throw v0
.end method

.method public registrationCompleted(Ljava/nio/channels/SelectableChannel;Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/SelectorThread;)V
    .locals 0

    return-void
.end method

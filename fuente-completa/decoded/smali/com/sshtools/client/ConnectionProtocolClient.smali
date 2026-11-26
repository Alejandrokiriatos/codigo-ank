.class public Lcom/sshtools/client/ConnectionProtocolClient;
.super Lcom/sshtools/synergy/ssh/ConnectionProtocol;
.source "ConnectionProtocolClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
        "Lcom/sshtools/client/SshClientContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/TransportProtocol<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sshtools/client/ConnectionProtocolClient;)Lcom/sshtools/synergy/ssh/Connection;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sshtools/client/ConnectionProtocolClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    return-object p0
.end method


# virtual methods
.method protected createChannel(Ljava/lang/String;Lcom/sshtools/synergy/ssh/Connection;)Lcom/sshtools/synergy/ssh/ChannelNG;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;)",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/UnsupportedChannelException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getContext()Lcom/sshtools/client/SshClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getChannelFactory()Lcom/sshtools/synergy/ssh/ChannelFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sshtools/synergy/ssh/ChannelFactory;->createChannel(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/synergy/ssh/ChannelNG;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Lcom/sshtools/client/SshClientContext;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getTransport()Lcom/sshtools/synergy/ssh/TransportProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    return-object v0
.end method

.method public bridge synthetic getContext()Lcom/sshtools/common/ssh/ExecutorServiceProvider;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getContext()Lcom/sshtools/client/SshClientContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContext()Lcom/sshtools/synergy/ssh/SshContext;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getContext()Lcom/sshtools/client/SshClientContext;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 176
    const-string v0, "ssh-connection"

    return-object v0
.end method

.method protected isClient()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 4

    .line 61
    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getContext()Lcom/sshtools/client/SshClientContext;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getConnectionManager()Lcom/sshtools/synergy/ssh/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sshtools/synergy/ssh/ConnectionManager;->registerConnection(Lcom/sshtools/synergy/ssh/ConnectionProtocol;)Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/ConnectionProtocolClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 64
    sget-object v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->EVENTS:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;

    iget-object v2, p0, Lcom/sshtools/client/ConnectionProtocolClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    new-instance v3, Lcom/sshtools/client/ConnectionProtocolClient$1;

    invoke-direct {v3, p0}, Lcom/sshtools/client/ConnectionProtocolClient$1;-><init>(Lcom/sshtools/client/ConnectionProtocolClient;)V

    invoke-direct {v1, v2, v3}, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/ConnectionProtocolClient;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method protected processTCPIPCancel(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/util/ByteArrayWriter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected processTCPIPForward(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/util/ByteArrayWriter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public startLocalForwarding(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/UnauthorizedException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ":"

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Requesting local forwarding on "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getContext()Lcom/sshtools/client/SshClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getForwardingPolicy()Lcom/sshtools/common/forwarding/ForwardingPolicy;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/client/ConnectionProtocolClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0, v3, p1, p2}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->checkInterfacePermitted(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "User not permitted to forward on "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_1
    new-instance p1, Lcom/sshtools/common/permissions/UnauthorizedException;

    invoke-direct {p1}, Lcom/sshtools/common/permissions/UnauthorizedException;-><init>()V

    throw p1

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getContext()Lcom/sshtools/client/SshClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getForwardingManager()Lcom/sshtools/synergy/ssh/ForwardingManager;

    move-result-object v3

    iget-object v6, p0, Lcom/sshtools/client/ConnectionProtocolClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/sshtools/synergy/ssh/ForwardingManager;->startListening(Ljava/lang/String;ILcom/sshtools/synergy/ssh/Connection;Ljava/lang/String;I)I

    move-result p1

    .line 105
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Local forwarding is now active on local interface "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " forwarding to remote "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return p1
.end method

.method public startRemoteForwarding(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getContext()Lcom/sshtools/client/SshClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getForwardingManager()Lcom/sshtools/synergy/ssh/ForwardingManager;

    move-result-object v1

    move-object v6, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/synergy/ssh/ForwardingManager;->startRemoteForwarding(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)I

    move-result p1

    return p1
.end method

.method public stopLocalForwarding()V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getContext()Lcom/sshtools/client/SshClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getForwardingManager()Lcom/sshtools/synergy/ssh/ForwardingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/ForwardingManager;->stopForwarding(Lcom/sshtools/synergy/ssh/Connection;)V

    return-void
.end method

.method public stopLocalForwarding(Ljava/lang/String;)V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getContext()Lcom/sshtools/client/SshClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getForwardingManager()Lcom/sshtools/synergy/ssh/ForwardingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sshtools/synergy/ssh/ForwardingManager;->stopForwarding(Ljava/lang/String;Lcom/sshtools/synergy/ssh/Connection;)V

    return-void
.end method

.method public stopLocalForwarding(Ljava/lang/String;I)V
    .locals 1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/ConnectionProtocolClient;->stopLocalForwarding(Ljava/lang/String;)V

    return-void
.end method

.method public stopRemoteForwarding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getContext()Lcom/sshtools/client/SshClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getForwardingManager()Lcom/sshtools/synergy/ssh/ForwardingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sshtools/synergy/ssh/ForwardingManager;->stopRemoteForwarding(Lcom/sshtools/synergy/ssh/ConnectionProtocol;)V

    return-void
.end method

.method public stopRemoteForwarding(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/sshtools/client/ConnectionProtocolClient;->getContext()Lcom/sshtools/client/SshClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getForwardingManager()Lcom/sshtools/synergy/ssh/ForwardingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/sshtools/synergy/ssh/ForwardingManager;->stopRemoteForwarding(Ljava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)V

    return-void
.end method

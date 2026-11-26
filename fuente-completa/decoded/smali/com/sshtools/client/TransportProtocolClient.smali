.class public Lcom/sshtools/client/TransportProtocolClient;
.super Lcom/sshtools/synergy/ssh/TransportProtocol;
.source "TransportProtocolClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/synergy/ssh/TransportProtocol<",
        "Lcom/sshtools/client/SshClientContext;",
        ">;"
    }
.end annotation


# instance fields
.field pendingService:Lcom/sshtools/synergy/ssh/Service;

.field proxyDone:Z


# direct methods
.method public constructor <init>(Lcom/sshtools/client/SshClientContext;Lcom/sshtools/synergy/nio/ConnectRequestFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/synergy/nio/LicenseException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sshtools/synergy/ssh/TransportProtocol;-><init>(Lcom/sshtools/synergy/ssh/SshContext;Lcom/sshtools/synergy/nio/ConnectRequestFuture;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sshtools/client/TransportProtocolClient;)Lcom/sshtools/synergy/ssh/SshContext;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sshtools/client/TransportProtocolClient;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sshtools/client/TransportProtocolClient;)Lcom/sshtools/synergy/ssh/Connection;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sshtools/client/TransportProtocolClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sshtools/client/TransportProtocolClient;)Lcom/sshtools/synergy/ssh/Connection;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sshtools/client/TransportProtocolClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    return-object p0
.end method


# virtual methods
.method protected canConnect(Lcom/sshtools/synergy/nio/SocketConnection;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected completeKeyExchange(Lcom/sshtools/synergy/ssh/components/SshKeyExchange;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/components/SshKeyExchange<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "["

    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 91
    :try_start_0
    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getHostKey()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->decodeSSH2PublicKey([B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/client/TransportProtocolClient;->hostKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 93
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v3

    check-cast v3, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v3}, Lcom/sshtools/client/SshClientContext;->getHostKeyVerification()Lcom/sshtools/common/knownhosts/HostKeyVerification;

    move-result-object v3
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "HOST_PUBLIC_KEY"

    const-string v5, "HOST_KEY"

    const-string v6, "CONNECTION"

    if-eqz v3, :cond_3

    .line 95
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getConnectFuture()Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 97
    const-string v7, "maverick.knownHosts.disablePortValidate"

    invoke-static {v7}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getConnectFuture()Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->getPort()I

    move-result v7

    const/16 v8, 0x16

    if-eq v7, v8, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getConnectFuture()Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->getPort()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getHostKeyVerification()Lcom/sshtools/common/knownhosts/HostKeyVerification;

    move-result-object v0

    iget-object v7, p0, Lcom/sshtools/client/TransportProtocolClient;->hostKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 104
    invoke-interface {v0, v3, v7}, Lcom/sshtools/common/knownhosts/HostKeyVerification;->verifyHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)Z

    move-result v0

    const v3, -0xfffffd

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/sshtools/client/TransportProtocolClient;->hostKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 128
    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getSignature()[B

    move-result-object v7

    .line 129
    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getExchangeHash()[B

    move-result-object v8

    .line 127
    invoke-interface {v0, v7, v8}, Lcom/sshtools/common/ssh/components/SshPublicKey;->verifySignature([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    new-instance v7, Lcom/sshtools/common/events/Event;

    invoke-direct {v7, p0, v3, v2}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    .line 136
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v3

    .line 134
    invoke-virtual {v7, v6, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    .line 137
    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getHostKey()[B

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5, v6}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    iget-object v3, p0, Lcom/sshtools/client/TransportProtocolClient;->hostKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 138
    invoke-virtual {p1, v4, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 132
    invoke-interface {v0, p1}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 139
    const-string p1, "Invalid host key signature"

    invoke-virtual {p0, v1, p1}, Lcom/sshtools/client/TransportProtocolClient;->disconnect(ILjava/lang/String;)V

    .line 143
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "The host key signature is invalid"

    const/4 v3, 0x3

    invoke-direct {p1, v0, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 106
    :cond_2
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    new-instance v7, Lcom/sshtools/common/events/Event;

    invoke-direct {v7, p0, v3, v2}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    .line 114
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v3

    .line 112
    invoke-virtual {v7, v6, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    .line 116
    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getHostKey()[B

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    .line 115
    invoke-virtual {v3, v5, v6}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    iget-object v3, p0, Lcom/sshtools/client/TransportProtocolClient;->hostKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 117
    invoke-virtual {p1, v4, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p1

    .line 107
    invoke-interface {v0, p1}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 119
    const-string p1, "Host key not accepted"

    invoke-virtual {p0, v1, p1}, Lcom/sshtools/client/TransportProtocolClient;->disconnect(ILjava/lang/String;)V

    .line 122
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "The host key was not accepted"

    const/16 v3, 0x8

    invoke-direct {p1, v0, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 149
    :cond_3
    :goto_0
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    new-instance v3, Lcom/sshtools/common/events/Event;

    const v7, -0xfffffc

    const/4 v8, 0x1

    invoke-direct {v3, p0, v7, v8}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    .line 154
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v7

    .line 152
    invoke-virtual {v3, v6, v7}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    .line 155
    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getHostKey()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5, v6}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    iget-object v5, p0, Lcom/sshtools/client/TransportProtocolClient;->hostKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 156
    invoke-virtual {v3, v4, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v3

    .line 149
    invoke-interface {v0, v3}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 158
    iget-boolean v0, p0, Lcom/sshtools/client/TransportProtocolClient;->completedFirstKeyExchange:Z

    xor-int/2addr v0, v8

    .line 159
    invoke-super {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->completeKeyExchange(Lcom/sshtools/synergy/ssh/components/SshKeyExchange;)V

    .line 160
    iget-object p1, p0, Lcom/sshtools/client/TransportProtocolClient;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    check-cast p1, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {p1, v0}, Lcom/sshtools/client/SshClientContext;->keysExchanged(Z)V
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 163
    :goto_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    const-string v0, "Could not verify host key"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 166
    :cond_4
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getConnectFuture()Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->setLastError(Ljava/lang/Throwable;)V

    .line 167
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getConnectFuture()Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->done(Z)V

    .line 168
    iget-object p1, p0, Lcom/sshtools/client/TransportProtocolClient;->disconnectStarted:Ljava/util/Date;

    if-eqz p1, :cond_5

    .line 169
    const-string p1, "The host key could not be verified."

    invoke-virtual {p0, v1, p1}, Lcom/sshtools/client/TransportProtocolClient;->disconnect(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected disconnected()V
    .locals 4

    .line 247
    sget-object v0, Lcom/sshtools/client/TransportProtocolClient;->EVENTS:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;

    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v2

    new-instance v3, Lcom/sshtools/client/TransportProtocolClient$2;

    invoke-direct {v3, p0}, Lcom/sshtools/client/TransportProtocolClient$2;-><init>(Lcom/sshtools/client/TransportProtocolClient;)V

    invoke-direct {v1, v2, v3}, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/TransportProtocolClient;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void
.end method

.method public getActiveService()Lcom/sshtools/synergy/ssh/Service;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/sshtools/client/TransportProtocolClient;->activeService:Lcom/sshtools/synergy/ssh/Service;

    return-object v0
.end method

.method protected getExtensionNegotiationString()Ljava/lang/String;
    .locals 1

    .line 282
    const-string v0, "ext-info-c"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 277
    const-string v0, "transport-client"

    return-object v0
.end method

.method protected initializeKeyExchange(Lcom/sshtools/synergy/ssh/components/SshKeyExchange;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/components/SshKeyExchange<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/sshtools/client/TransportProtocolClient;->localIdentification:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sshtools/client/TransportProtocolClient;->remoteIdentification:Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/client/TransportProtocolClient;->localkex:[B

    iget-object v6, p0, Lcom/sshtools/client/TransportProtocolClient;->remotekex:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v1, p1

    move v9, p2

    move v10, p3

    .line 76
    invoke-interface/range {v1 .. v10}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->init(Lcom/sshtools/synergy/ssh/SshTransport;Ljava/lang/String;Ljava/lang/String;[B[BLcom/sshtools/common/ssh/components/SshPrivateKey;Lcom/sshtools/common/ssh/components/SshPublicKey;ZZ)V

    return-void
.end method

.method protected isExtensionNegotiationSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isServerMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConnected()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/sshtools/client/TransportProtocolClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getConnectionManager()Lcom/sshtools/synergy/ssh/ConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/TransportProtocolClient;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    check-cast v1, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0, p0, v1}, Lcom/sshtools/synergy/ssh/ConnectionManager;->registerTransport(Lcom/sshtools/synergy/ssh/TransportProtocol;Lcom/sshtools/synergy/ssh/SshContext;)Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/TransportProtocolClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 261
    sget-object v0, Lcom/sshtools/client/TransportProtocolClient;->EVENTS:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;

    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v2

    new-instance v3, Lcom/sshtools/client/TransportProtocolClient$3;

    invoke-direct {v3, p0}, Lcom/sshtools/client/TransportProtocolClient$3;-><init>(Lcom/sshtools/client/TransportProtocolClient;)V

    invoke-direct {v1, v2, v3}, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/TransportProtocolClient;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    :cond_0
    return-void
.end method

.method protected onDisconnected()V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getConnectionManager()Lcom/sshtools/synergy/ssh/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sshtools/synergy/ssh/ConnectionManager;->unregisterTransport(Lcom/sshtools/synergy/ssh/TransportProtocol;)V

    return-void
.end method

.method protected onKeyExchangeInit()V
    .locals 0

    return-void
.end method

.method protected onNewKeysReceived()V
    .locals 0

    .line 175
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->generateNewKeysClientIn()V

    return-void
.end method

.method protected onNewKeysSent()V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/sshtools/client/TransportProtocolClient;->generateNewKeysClientOut()V

    return-void
.end method

.method public onSocketRead(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sshtools/client/TransportProtocolClient;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->isProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sshtools/client/TransportProtocolClient;->proxyDone:Z

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->onSocketRead(Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->onSocketRead(Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1
.end method

.method protected processTransportMessage(I[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/TransportProtocolClient;->pendingService:Lcom/sshtools/synergy/ssh/Service;

    if-eqz p1, :cond_1

    .line 200
    iput-object p1, p0, Lcom/sshtools/client/TransportProtocolClient;->activeService:Lcom/sshtools/synergy/ssh/Service;

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/sshtools/client/TransportProtocolClient;->pendingService:Lcom/sshtools/synergy/ssh/Service;

    .line 202
    iget-object p1, p0, Lcom/sshtools/client/TransportProtocolClient;->activeService:Lcom/sshtools/synergy/ssh/Service;

    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/Service;->start()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected selectNegotiatedComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-super {p0, p2, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->selectNegotiatedComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setActiveService(Lcom/sshtools/synergy/ssh/Service;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/sshtools/client/TransportProtocolClient;->activeService:Lcom/sshtools/synergy/ssh/Service;

    return-void
.end method

.method public startService(Lcom/sshtools/synergy/ssh/Service;)V
    .locals 1

    .line 219
    iput-object p1, p0, Lcom/sshtools/client/TransportProtocolClient;->pendingService:Lcom/sshtools/synergy/ssh/Service;

    .line 221
    new-instance v0, Lcom/sshtools/client/TransportProtocolClient$1;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/client/TransportProtocolClient$1;-><init>(Lcom/sshtools/client/TransportProtocolClient;Lcom/sshtools/synergy/ssh/Service;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/client/TransportProtocolClient;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void
.end method

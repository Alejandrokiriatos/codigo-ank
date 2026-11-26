.class public abstract Lcom/sshtools/synergy/nio/ProtocolContext;
.super Ljava/lang/Object;
.source "ProtocolContext.java"


# instance fields
.field protected keepAlive:Z

.field private optionalHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private proxyHostname:Ljava/lang/String;

.field private proxyPassword:Ljava/lang/String;

.field private proxyPort:I

.field private proxyType:Lcom/sshtools/common/net/ProxyType;

.field private proxyUsername:Ljava/lang/String;

.field protected receiveBufferSize:I

.field private resolveLocally:Z

.field protected reuseAddress:Z

.field protected sendBufferSize:I

.field private socketConnectionFactory:Lcom/sshtools/synergy/nio/SocketConnectionFactory;

.field protected tcpNoDelay:Z

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->keepAlive:Z

    .line 36
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->tcpNoDelay:Z

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->reuseAddress:Z

    .line 38
    iput v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->receiveBufferSize:I

    .line 39
    iput v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->sendBufferSize:I

    .line 48
    sget-object v0, Lcom/sshtools/common/net/ProxyType;->NONE:Lcom/sshtools/common/net/ProxyType;

    iput-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyType:Lcom/sshtools/common/net/ProxyType;

    .line 50
    new-instance v0, Lcom/sshtools/synergy/nio/DefaultSocketConnectionFactory;

    invoke-direct {v0}, Lcom/sshtools/synergy/nio/DefaultSocketConnectionFactory;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->socketConnectionFactory:Lcom/sshtools/synergy/nio/SocketConnectionFactory;

    return-void
.end method


# virtual methods
.method protected abstract createEngine(Lcom/sshtools/synergy/nio/ConnectRequestFuture;)Lcom/sshtools/synergy/nio/ProtocolEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public enableHTTPProxy(Ljava/lang/String;I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 179
    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/synergy/nio/ProtocolContext;->enableHTTPProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public enableHTTPProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 184
    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/synergy/nio/ProtocolContext;->enableHTTPProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public enableHTTPProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 189
    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/synergy/nio/ProtocolContext;->enableHTTPProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public enableHTTPProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/sshtools/common/net/ProxyType;->HTTP:Lcom/sshtools/common/net/ProxyType;

    iput-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyType:Lcom/sshtools/common/net/ProxyType;

    .line 197
    iput-object p1, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyHostname:Ljava/lang/String;

    .line 198
    iput p2, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyPort:I

    .line 199
    iput-object p3, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyUsername:Ljava/lang/String;

    .line 200
    iput-object p4, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyPassword:Ljava/lang/String;

    .line 201
    iput-object p5, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->userAgent:Ljava/lang/String;

    .line 202
    iput-object p6, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->optionalHeaders:Ljava/util/Map;

    return-void
.end method

.method public enableSocks4Proxy(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 161
    sget-object v0, Lcom/sshtools/common/net/ProxyType;->SOCKS4:Lcom/sshtools/common/net/ProxyType;

    iput-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyType:Lcom/sshtools/common/net/ProxyType;

    .line 162
    iput-object p1, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyHostname:Ljava/lang/String;

    .line 163
    iput p2, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyPort:I

    .line 164
    iput-object p3, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyUsername:Ljava/lang/String;

    return-void
.end method

.method public enableSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 170
    sget-object v0, Lcom/sshtools/common/net/ProxyType;->SOCKS5:Lcom/sshtools/common/net/ProxyType;

    iput-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyType:Lcom/sshtools/common/net/ProxyType;

    .line 171
    iput-object p1, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyHostname:Ljava/lang/String;

    .line 172
    iput p2, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyPort:I

    .line 173
    iput-object p3, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyUsername:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyPassword:Ljava/lang/String;

    .line 175
    iput-boolean p5, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->resolveLocally:Z

    return-void
.end method

.method public getOptionalHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->optionalHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getProxyHostname()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyPort:I

    return v0
.end method

.method public getProxyType()Lcom/sshtools/common/net/ProxyType;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyType:Lcom/sshtools/common/net/ProxyType;

    return-object v0
.end method

.method public getProxyUsername()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->receiveBufferSize:I

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->sendBufferSize:I

    return v0
.end method

.method public getSocketConnectionFactory()Lcom/sshtools/synergy/nio/SocketConnectionFactory;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->socketConnectionFactory:Lcom/sshtools/synergy/nio/SocketConnectionFactory;

    return-object v0
.end method

.method public getSocketOptionKeepAlive()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->keepAlive:Z

    return v0
.end method

.method public getSocketOptionReuseAddress()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->reuseAddress:Z

    return v0
.end method

.method public getSocketOptionTcpNoDelay()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->tcpNoDelay:Z

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isProxyEnabled()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->proxyType:Lcom/sshtools/common/net/ProxyType;

    sget-object v1, Lcom/sshtools/common/net/ProxyType;->NONE:Lcom/sshtools/common/net/ProxyType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isResolveLocally()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->resolveLocally:Z

    return v0
.end method

.method public setReceiveBufferSize(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->receiveBufferSize:I

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->sendBufferSize:I

    return-void
.end method

.method public setSocketConnectionFactory(Lcom/sshtools/synergy/nio/SocketConnectionFactory;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->socketConnectionFactory:Lcom/sshtools/synergy/nio/SocketConnectionFactory;

    return-void
.end method

.method public setSocketOptionKeepAlive(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->keepAlive:Z

    return-void
.end method

.method public setSocketOptionReuseAddress(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->reuseAddress:Z

    return-void
.end method

.method public setSocketOptionTcpNoDelay(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/ProtocolContext;->tcpNoDelay:Z

    return-void
.end method

.method public abstract shutdown()V
.end method

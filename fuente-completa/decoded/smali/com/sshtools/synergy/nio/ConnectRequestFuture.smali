.class public Lcom/sshtools/synergy/nio/ConnectRequestFuture;
.super Lcom/sshtools/common/ssh/AbstractRequestFuture;
.source "ConnectRequestFuture.java"


# instance fields
.field con:Lcom/sshtools/synergy/ssh/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/Connection<",
            "*>;"
        }
    .end annotation
.end field

.field exception:Ljava/lang/Throwable;

.field host:Ljava/lang/String;

.field port:I

.field transport:Lcom/sshtools/synergy/nio/ProtocolEngine;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/sshtools/common/ssh/AbstractRequestFuture;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sshtools/common/ssh/AbstractRequestFuture;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->host:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->port:I

    return-void
.end method


# virtual methods
.method public connected(Lcom/sshtools/synergy/nio/ProtocolEngine;Lcom/sshtools/synergy/ssh/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/nio/ProtocolEngine;",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "*>;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->transport:Lcom/sshtools/synergy/nio/ProtocolEngine;

    .line 46
    iput-object p2, p0, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->con:Lcom/sshtools/synergy/ssh/Connection;

    const/4 p1, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/sshtools/common/ssh/AbstractRequestFuture;->done(Z)V

    return-void
.end method

.method failed()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-super {p0, v0}, Lcom/sshtools/common/ssh/AbstractRequestFuture;->done(Z)V

    return-void
.end method

.method public getConnection()Lcom/sshtools/synergy/ssh/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "*>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->con:Lcom/sshtools/synergy/ssh/Connection;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getLastError()Ljava/lang/Throwable;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->port:I

    return v0
.end method

.method public getTransport()Lcom/sshtools/synergy/nio/ProtocolEngine;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->transport:Lcom/sshtools/synergy/nio/ProtocolEngine;

    return-object v0
.end method

.method public setLastError(Ljava/lang/Throwable;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->exception:Ljava/lang/Throwable;

    return-void
.end method

.class public Lcom/sshtools/synergy/ssh/AuthenticatedFuture;
.super Lcom/sshtools/common/ssh/AbstractRequestFuture;
.source "AuthenticatedFuture.java"


# instance fields
.field transport:Lcom/sshtools/synergy/ssh/TransportProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/TransportProtocol<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/TransportProtocol<",
            "*>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/sshtools/common/ssh/AbstractRequestFuture;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    return-void
.end method


# virtual methods
.method public authenticated(Z)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;->done(Z)V

    return-void
.end method

.method public declared-synchronized done(Z)V
    .locals 2

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "Authenticated connection {}"

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getUUID()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lcom/sshtools/common/ssh/AbstractRequestFuture;->done(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

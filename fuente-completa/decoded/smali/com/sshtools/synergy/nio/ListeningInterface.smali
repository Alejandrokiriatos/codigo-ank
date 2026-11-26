.class public Lcom/sshtools/synergy/nio/ListeningInterface;
.super Ljava/lang/Object;
.source "ListeningInterface.java"


# instance fields
.field private actualPort:I

.field private addressToBind:Ljava/net/InetSocketAddress;

.field private backlog:I

.field private contextFactory:Lcom/sshtools/synergy/nio/ProtocolContextFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/nio/ProtocolContextFactory<",
            "*>;"
        }
    .end annotation
.end field

.field private reuseAddress:Z


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;Lcom/sshtools/synergy/nio/ProtocolContextFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lcom/sshtools/synergy/nio/ProtocolContextFactory<",
            "*>;)V"
        }
    .end annotation

    const/16 v0, 0x32

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/sshtools/synergy/nio/ListeningInterface;-><init>(Ljava/net/InetSocketAddress;Lcom/sshtools/synergy/nio/ProtocolContextFactory;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lcom/sshtools/synergy/nio/ProtocolContextFactory;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lcom/sshtools/synergy/nio/ProtocolContextFactory<",
            "*>;I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->reuseAddress:Z

    .line 43
    iput-object p1, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->addressToBind:Ljava/net/InetSocketAddress;

    .line 44
    iput-object p2, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->contextFactory:Lcom/sshtools/synergy/nio/ProtocolContextFactory;

    .line 45
    iput p3, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->backlog:I

    return-void
.end method


# virtual methods
.method public getActualPort()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->actualPort:I

    return v0
.end method

.method public getAddressToBind()Ljava/net/InetSocketAddress;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->addressToBind:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getBacklog()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->backlog:I

    return v0
.end method

.method public getContextFactory()Lcom/sshtools/synergy/nio/ProtocolContextFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/nio/ProtocolContextFactory<",
            "*>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->contextFactory:Lcom/sshtools/synergy/nio/ProtocolContextFactory;

    return-object v0
.end method

.method public getSocketOptionReuseAddress()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->reuseAddress:Z

    return v0
.end method

.method public isIPV6Interface()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->addressToBind:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    return v0
.end method

.method public setActualPort(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->actualPort:I

    return-void
.end method

.method public setBacklog(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->backlog:I

    return-void
.end method

.method public setSocketOptionReuseAddress(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/ListeningInterface;->reuseAddress:Z

    return-void
.end method

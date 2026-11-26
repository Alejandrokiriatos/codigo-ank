.class public Lcom/sshtools/common/forwarding/ForwardingPolicy;
.super Lcom/sshtools/common/permissions/Permissions;
.source "ForwardingPolicy.java"


# static fields
.field public static final ALLOW_FORWARDING:I = 0x1

.field public static final GATEWAY_FORWARDING:I = 0x2

.field public static final UNIX_DOMAIN_SOCKET_FORWARDING:I = 0x4


# instance fields
.field private forwardingMaxPacketSize:I

.field private forwardingMaxWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

.field private forwardingMinWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

.field permit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 48
    invoke-direct {p0}, Lcom/sshtools/common/permissions/Permissions;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->permit:Ljava/util/List;

    const/high16 v0, 0x10000

    .line 44
    iput v0, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->forwardingMaxPacketSize:I

    .line 45
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/32 v1, 0x50000

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    iput-object v0, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->forwardingMaxWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 46
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/32 v1, 0x8000

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    iput-object v0, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->forwardingMinWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-void
.end method


# virtual methods
.method public allowForwarding()Lcom/sshtools/common/forwarding/ForwardingPolicy;
    .locals 1

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p0, v0}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->add(I)V

    return-object p0
.end method

.method public allowGatewayForwarding()Lcom/sshtools/common/forwarding/ForwardingPolicy;
    .locals 1

    const/4 v0, 0x2

    .line 52
    invoke-virtual {p0, v0}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->add(I)V

    return-object p0
.end method

.method public checkHostPermitted(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;I)Z
    .locals 4

    const/4 p1, 0x1

    .line 132
    invoke-virtual {p0, p1}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->check(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->permit:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ":*"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 141
    iget-object v2, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->permit:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, p1

    :goto_2
    if-eqz v0, :cond_1

    :cond_4
    return v0
.end method

.method public checkInterfacePermitted(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;I)Z
    .locals 1

    const/4 p1, 0x1

    .line 97
    invoke-virtual {p0, p1}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->check(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 100
    new-array v0, p1, [Ljava/lang/String;

    invoke-static {p2, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/nio/file/Path;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x4

    .line 102
    invoke-virtual {p0, p1}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->check(I)Z

    move-result p1

    return p1

    .line 106
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p3

    .line 108
    invoke-virtual {p3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->check(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr p1, p3

    return p1

    :catch_0
    move-exception p3

    .line 110
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "Failed to determine local forwarding originators interface {}"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p3, p2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    return p1
.end method

.method public denyForwarding()Lcom/sshtools/common/forwarding/ForwardingPolicy;
    .locals 1

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, v0}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->remove(I)V

    return-object p0
.end method

.method public denyGatewayForwarding()Lcom/sshtools/common/forwarding/ForwardingPolicy;
    .locals 1

    const/4 v0, 0x2

    .line 57
    invoke-virtual {p0, v0}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->remove(I)V

    return-object p0
.end method

.method public getForwardingMaxPacketSize()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->forwardingMaxPacketSize:I

    return v0
.end method

.method public getForwardingMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->forwardingMaxWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public getForwardingMinWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->forwardingMinWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public grantForwarding(Ljava/lang/String;)Lcom/sshtools/common/forwarding/ForwardingPolicy;
    .locals 2

    const/16 v0, 0x3a

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":*"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->permit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public revokeForwarding(Ljava/lang/String;)Lcom/sshtools/common/forwarding/ForwardingPolicy;
    .locals 2

    const/16 v0, 0x3a

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":*"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->permit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setForwardingMaxPacketSize(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->forwardingMaxPacketSize:I

    return-void
.end method

.method public setForwardingMaxWindowSize(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->forwardingMaxWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-void
.end method

.method public setForwardingMinWindowSize(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/sshtools/common/forwarding/ForwardingPolicy;->forwardingMinWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-void
.end method

.class public Lcom/sshtools/client/SessionChannelNG;
.super Lcom/sshtools/client/AbstractSessionChannel;
.source "SessionChannelNG.java"

# interfaces
.implements Lcom/sshtools/common/ssh/SessionChannel;


# instance fields
.field extendedData:Lcom/sshtools/synergy/ssh/CachingDataWindow;

.field stderrInputStream:Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "Lcom/sshtools/client/SshClientContext;",
            ">.ChannelInputStream;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 93
    const-string v1, "session"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/sshtools/client/SessionChannelNG;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V
    .locals 8

    .line 83
    const-string v1, "session"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sshtools/client/SessionChannelNG;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Z)V
    .locals 8

    .line 88
    const-string v1, "session"

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sshtools/client/SessionChannelNG;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/sshtools/client/SessionChannelNG;-><init>(Lcom/sshtools/common/ssh/SshConnection;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;Z)V
    .locals 8

    .line 59
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p2

    const-class v0, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {p2, v0}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {p2}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxPacketSize()I

    move-result v2

    .line 60
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p2

    const-class v0, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {p2, v0}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {p2}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v3

    .line 61
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p2

    const-class v0, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {p2, v0}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {p2}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    .line 62
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p1

    const-class p2, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {p1, p2}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {p1}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMinWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v5

    const/4 v6, 0x0

    .line 59
    const-string v1, "session"

    move-object v0, p0

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/sshtools/client/SessionChannelNG;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;Z)V
    .locals 9

    .line 51
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxPacketSize()I

    move-result v3

    .line 52
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    .line 53
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v5

    .line 54
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p1

    const-class v0, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {p1, v0}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {p1}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMinWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v6

    const/4 v7, 0x0

    .line 51
    const-string v2, "session"

    move-object v1, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/sshtools/client/SessionChannelNG;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V
    .locals 0

    .line 76
    invoke-direct/range {p0 .. p7}, Lcom/sshtools/client/AbstractSessionChannel;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    move-object p1, p0

    .line 77
    new-instance p2, Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {p4}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result p3

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4}, Lcom/sshtools/synergy/ssh/CachingDataWindow;-><init>(IZ)V

    iput-object p2, p1, Lcom/sshtools/client/SessionChannelNG;->extendedData:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    .line 78
    new-instance p2, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;

    iget-object p3, p1, Lcom/sshtools/client/SessionChannelNG;->extendedData:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-direct {p2, p0, p3}, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;Lcom/sshtools/synergy/ssh/CachingDataWindow;)V

    iput-object p2, p1, Lcom/sshtools/client/SessionChannelNG;->stderrInputStream:Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;Z)V
    .locals 9

    .line 67
    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxPacketSize()I

    move-result v3

    .line 68
    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    .line 69
    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v5

    .line 70
    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p2

    const-class v0, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-interface {p2, v0}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {p2}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMinWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v8, p3

    .line 67
    invoke-direct/range {v1 .. v8}, Lcom/sshtools/client/SessionChannelNG;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    return-void
.end method


# virtual methods
.method protected checkWindowSpace()Z
    .locals 7

    .line 117
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/sshtools/client/SessionChannelNG;->getLocalId()I

    move-result v0

    iget-object v2, p0, Lcom/sshtools/client/SessionChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/sshtools/client/SessionChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-static {v3}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    const-string v4, ""

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sshtools/client/SessionChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->remaining()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " cached="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 120
    :goto_0
    iget-object v5, p0, Lcom/sshtools/client/SessionChannelNG;->extendedData:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-static {v5}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/sshtools/client/SessionChannelNG;->extendedData:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->remaining()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " extended="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Checking window space on channel="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " window="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 118
    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/sshtools/client/SessionChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    .line 123
    iget-object v0, p0, Lcom/sshtools/client/SessionChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sshtools/client/SessionChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->remaining()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 124
    iget-object v0, p0, Lcom/sshtools/client/SessionChannelNG;->extendedData:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sshtools/client/SessionChannelNG;->extendedData:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->remaining()I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/sshtools/client/SessionChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    .line 125
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getMinimumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    return v1
.end method

.method public getMaximumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sshtools/client/SessionChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getMaximumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sshtools/client/SessionChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getMinimumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    return-object v0
.end method

.method public getStderrStream()Ljava/io/InputStream;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/sshtools/client/SessionChannelNG;->stderrInputStream:Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;

    return-object v0
.end method

.method protected onExtendedData(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 100
    invoke-super {p0, p1, p2}, Lcom/sshtools/client/AbstractSessionChannel;->onExtendedData(Ljava/nio/ByteBuffer;I)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 104
    :try_start_0
    iget-object p2, p0, Lcom/sshtools/client/SessionChannelNG;->extendedData:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {p2, p1}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->put(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 106
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Attempt to write extended data to channel cache failed because the cache is closed"

    invoke-static {p2, p1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lcom/sshtools/client/SessionChannelNG;->close()V

    :cond_0
    return-void
.end method

.method public onSessionOpen()V
    .locals 0

    return-void
.end method

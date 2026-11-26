.class public Lcom/sshtools/common/permissions/IPPolicy;
.super Lcom/sshtools/common/permissions/Permissions;
.source "IPPolicy.java"


# static fields
.field static final ALLOW_CONNECT:I = 0x1

.field static final DISABLE_BAN:I = 0x2


# instance fields
.field blacklist:Lcom/sshtools/common/permissions/IPStore;

.field failedAuthenticationThreshold:I

.field flaggedAddressCounts:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/util/ExpiringConcurrentHashMap<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field temporaryBans:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/util/ExpiringConcurrentHashMap<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field whitelist:Lcom/sshtools/common/permissions/IPStore;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 45
    invoke-direct {p0}, Lcom/sshtools/common/permissions/Permissions;-><init>()V

    .line 38
    new-instance v0, Lcom/sshtools/common/permissions/IPStore;

    invoke-direct {v0}, Lcom/sshtools/common/permissions/IPStore;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->blacklist:Lcom/sshtools/common/permissions/IPStore;

    .line 39
    new-instance v0, Lcom/sshtools/common/permissions/IPStore;

    invoke-direct {v0}, Lcom/sshtools/common/permissions/IPStore;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->whitelist:Lcom/sshtools/common/permissions/IPStore;

    const/16 v0, 0xf

    .line 42
    iput v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->failedAuthenticationThreshold:I

    .line 43
    new-instance v0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;-><init>(J)V

    iput-object v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->temporaryBans:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Lcom/sshtools/common/permissions/IPPolicy;->add(I)V

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v0}, Lcom/sshtools/common/permissions/IPPolicy;->setFailedAuthenticationThresholdPeriod(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private convertAddress(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x4

    .line 175
    new-array v1, v0, [B

    .line 176
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 178
    aget-object v3, p1, v2

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected assertAllowed(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .locals 5

    .line 97
    :try_start_0
    iget-object p2, p0, Lcom/sshtools/common/permissions/IPPolicy;->temporaryBans:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    .line 98
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 99
    const-string p2, "Rejecting IP {} because of temporary ban"

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    .line 104
    iget-object v1, p0, Lcom/sshtools/common/permissions/IPPolicy;->whitelist:Lcom/sshtools/common/permissions/IPStore;

    invoke-virtual {v1}, Lcom/sshtools/common/permissions/IPStore;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/sshtools/common/permissions/IPPolicy;->whitelist:Lcom/sshtools/common/permissions/IPStore;

    invoke-virtual {p0, p2, v1}, Lcom/sshtools/common/permissions/IPPolicy;->isListed(Ljava/lang/String;Lcom/sshtools/common/permissions/IPStore;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 108
    :goto_0
    iget-object v3, p0, Lcom/sshtools/common/permissions/IPPolicy;->blacklist:Lcom/sshtools/common/permissions/IPStore;

    invoke-virtual {p0, p2, v3}, Lcom/sshtools/common/permissions/IPPolicy;->isListed(Ljava/lang/String;Lcom/sshtools/common/permissions/IPStore;)Z

    move-result p2

    .line 110
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    const-string v3, "{} is {} by IP policy"

    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    const-string v4, "allowed"

    goto :goto_1

    :cond_2
    const-string v4, "denied"

    :goto_1
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    return v2

    :cond_4
    return v0

    .line 116
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid IP range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected assertConnection(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .locals 2

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Lcom/sshtools/common/permissions/IPPolicy;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 82
    invoke-virtual {p0, v1}, Lcom/sshtools/common/permissions/IPPolicy;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 85
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/permissions/IPPolicy;->assertAllowed(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 198
    const-string v0, "Blacklisting IP address {}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->blacklist:Lcom/sshtools/common/permissions/IPStore;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/permissions/IPStore;->add(Ljava/lang/String;)V

    return-void
.end method

.method public final checkConnection(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 167
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sshtools/common/permissions/IPPolicy;->convertAddress(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p2

    .line 168
    invoke-direct {p0, p1}, Lcom/sshtools/common/permissions/IPPolicy;->convertAddress(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    .line 167
    invoke-virtual {p0, p2, p1}, Lcom/sshtools/common/permissions/IPPolicy;->assertConnection(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 170
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final checkConnection(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .locals 0

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/permissions/IPPolicy;->assertConnection(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result p1

    return p1
.end method

.method public disableTemporaryBanning()V
    .locals 1

    const/4 v0, 0x2

    .line 68
    invoke-virtual {p0, v0}, Lcom/sshtools/common/permissions/IPPolicy;->add(I)V

    return-void
.end method

.method public enableTemporaryBanning()V
    .locals 1

    const/4 v0, 0x2

    .line 72
    invoke-virtual {p0, v0}, Lcom/sshtools/common/permissions/IPPolicy;->remove(I)V

    return-void
.end method

.method public flagAddress(Ljava/lang/String;)V
    .locals 2

    .line 131
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/permissions/IPPolicy;->flagAddress(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public flagAddress(Ljava/net/InetAddress;)V
    .locals 4

    const/4 v0, 0x2

    .line 139
    invoke-virtual {p0, v0}, Lcom/sshtools/common/permissions/IPPolicy;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->flaggedAddressCounts:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 145
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/sshtools/common/permissions/IPPolicy;->failedAuthenticationThreshold:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    .line 146
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 147
    const-string v1, "Temporarily banning IP address {} due to failed authentication count of {}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->temporaryBans:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 154
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 155
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Flagging IP address {} with failed authentication count of {}"

    invoke-static {v2, v1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/sshtools/common/permissions/IPPolicy;->flaggedAddressCounts:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBlacklist()Lcom/sshtools/common/permissions/IPStore;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->blacklist:Lcom/sshtools/common/permissions/IPStore;

    return-object v0
.end method

.method public getTemporaryBanTime()J
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->temporaryBans:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    invoke-virtual {v0}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->getExpiryTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWhitelist()Lcom/sshtools/common/permissions/IPStore;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->whitelist:Lcom/sshtools/common/permissions/IPStore;

    return-object v0
.end method

.method protected isListed(Ljava/lang/String;Lcom/sshtools/common/permissions/IPStore;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 121
    invoke-virtual {p2}, Lcom/sshtools/common/permissions/IPStore;->getIPs()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/net/CIDRNetwork;

    .line 122
    invoke-virtual {v0, p1}, Lcom/sshtools/common/net/CIDRNetwork;->isValidAddressForNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setBlacklist(Lcom/sshtools/common/permissions/IPStore;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/sshtools/common/permissions/IPPolicy;->blacklist:Lcom/sshtools/common/permissions/IPStore;

    return-void
.end method

.method public setFailedAuthenticationCountThreshold(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/sshtools/common/permissions/IPPolicy;->failedAuthenticationThreshold:I

    return-void
.end method

.method public setFailedAuthenticationThresholdPeriod(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;-><init>(J)V

    iput-object v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->flaggedAddressCounts:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    return-void
.end method

.method public setTemporaryBanTime(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 62
    new-instance v0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;-><init>(J)V

    .line 63
    iget-object p1, p0, Lcom/sshtools/common/permissions/IPPolicy;->temporaryBans:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ExpiringConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 64
    iput-object v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->temporaryBans:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Temporary ban period must be more than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWhitelist(Lcom/sshtools/common/permissions/IPStore;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/sshtools/common/permissions/IPPolicy;->whitelist:Lcom/sshtools/common/permissions/IPStore;

    return-void
.end method

.method public startAcceptingConnections()V
    .locals 2

    .line 191
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 192
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Start accepting connections on IP Policy"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, v0}, Lcom/sshtools/common/permissions/IPPolicy;->add(I)V

    return-void
.end method

.method public stopAcceptingConnections()V
    .locals 2

    .line 184
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 185
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Stop accepting connections on IP Policy"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, v0}, Lcom/sshtools/common/permissions/IPPolicy;->remove(I)V

    return-void
.end method

.method public whitelist(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 203
    const-string v0, "Whitelisting IP address {}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/sshtools/common/permissions/IPPolicy;->whitelist:Lcom/sshtools/common/permissions/IPStore;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/permissions/IPStore;->add(Ljava/lang/String;)V

    return-void
.end method

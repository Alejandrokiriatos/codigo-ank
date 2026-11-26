.class public Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;
.super Ljava/lang/Object;
.source "ConnectionLoggingContext.java"

# interfaces
.implements Lcom/sshtools/common/logger/LoggerContext;
.implements Lcom/sshtools/common/events/EventListener;


# instance fields
.field activeLoggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sshtools/common/ssh/SshConnection;",
            "Lcom/sshtools/common/logger/FileLoggingContext;",
            ">;"
        }
    .end annotation
.end field

.field cm:Lcom/sshtools/synergy/ssh/ConnectionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ConnectionManager<",
            "*>;"
        }
    .end annotation
.end field

.field defaultLevel:Lcom/sshtools/common/logger/Log$Level;


# direct methods
.method constructor <init>(Lcom/sshtools/common/logger/Log$Level;Lcom/sshtools/synergy/ssh/ConnectionManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/logger/Log$Level;",
            "Lcom/sshtools/synergy/ssh/ConnectionManager<",
            "*>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->activeLoggers:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->defaultLevel:Lcom/sshtools/common/logger/Log$Level;

    .line 55
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->cm:Lcom/sshtools/synergy/ssh/ConnectionManager;

    return-void
.end method

.method private getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 200
    invoke-static {}, Lcom/sshtools/common/logger/Log;->getDefaultContext()Lcom/sshtools/common/logger/RootLoggerContext;

    move-result-object v0

    const-string v1, "maverick.log.connection%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sshtools/common/logger/RootLoggerContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-static {}, Lcom/sshtools/common/logger/Log;->getDefaultContext()Lcom/sshtools/common/logger/RootLoggerContext;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->getPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/sshtools/common/logger/RootLoggerContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPropertyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->cm:Lcom/sshtools/synergy/ssh/ConnectionManager;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionManager;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "maverick.log.connection.%s%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isLoggingConnection(Lcom/sshtools/synergy/ssh/Connection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "*>;)Z"
        }
    .end annotation

    .line 149
    invoke-static {}, Lcom/sshtools/common/logger/Log;->getDefaultContext()Lcom/sshtools/common/logger/RootLoggerContext;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->getPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->defaultLevel:Lcom/sshtools/common/logger/Log$Level;

    sget-object v3, Lcom/sshtools/common/logger/Log$Level;->NONE:Lcom/sshtools/common/logger/Log$Level;

    .line 150
    invoke-virtual {v2, v3}, Lcom/sshtools/common/logger/Log$Level;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/logger/RootLoggerContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->isLoggingRemoteAddress(Lcom/sshtools/common/ssh/SshConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->isLoggingRemotePort(Lcom/sshtools/common/ssh/SshConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->isLoggingLocalAddress(Lcom/sshtools/common/ssh/SshConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->isLoggingLocalPort(Lcom/sshtools/common/ssh/SshConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->isLoggingIdentifier(Lcom/sshtools/synergy/ssh/Connection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->isLoggingUser(Lcom/sshtools/synergy/ssh/Connection;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method private isLoggingIdentifier(Lcom/sshtools/synergy/ssh/Connection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "*>;)Z"
        }
    .end annotation

    .line 176
    const-string v0, ".ident"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 180
    :cond_0
    const-string v1, "SSH-2.0-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 185
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/Connection;->getRemoteIdentification()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 186
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/Connection;->getRemoteIdentification()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 193
    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    return p1
.end method

.method private isLoggingLocalAddress(Lcom/sshtools/common/ssh/SshConnection;)Z
    .locals 2

    .line 84
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".localAddr"

    invoke-direct {p0, v1, v0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->lookup(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Z

    move-result p1

    return p1
.end method

.method private isLoggingLocalPort(Lcom/sshtools/common/ssh/SshConnection;)Z
    .locals 2

    .line 92
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getLocalPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".localPort"

    invoke-direct {p0, v1, v0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->lookup(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Z

    move-result p1

    return p1
.end method

.method private isLoggingRemoteAddress(Lcom/sshtools/common/ssh/SshConnection;)Z
    .locals 2

    .line 80
    const-string v0, ".remoteAddr"

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->lookup(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Z

    move-result p1

    return p1
.end method

.method private isLoggingRemotePort(Lcom/sshtools/common/ssh/SshConnection;)Z
    .locals 2

    .line 88
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getRemotePort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".remotePort"

    invoke-direct {p0, v1, v0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->lookup(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Z

    move-result p1

    return p1
.end method

.method private isLoggingUser(Lcom/sshtools/synergy/ssh/Connection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "*>;)Z"
        }
    .end annotation

    .line 162
    const-string v0, ".user"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 166
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 167
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/Connection;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/Connection;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 170
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    return p1
.end method

.method private lookup(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Z
    .locals 2

    .line 96
    const-string p3, ""

    invoke-direct {p0, p1, p3}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    return v0

    .line 100
    :cond_0
    new-instance p3, Ljava/util/HashSet;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 101
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public close(Lcom/sshtools/synergy/ssh/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "*>;)V"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->activeLoggers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/logger/FileLoggingContext;

    .line 210
    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/sshtools/common/logger/FileLoggingContext;->close()V

    :cond_0
    return-void
.end method

.method public isLogging(Lcom/sshtools/common/logger/Log$Level;)Z
    .locals 3

    .line 60
    invoke-static {}, Lcom/sshtools/synergy/ssh/ConnectionManager;->getCurrentConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->activeLoggers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->activeLoggers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/logger/FileLoggingContext;

    invoke-virtual {v0}, Lcom/sshtools/common/logger/FileLoggingContext;->getLevel()Lcom/sshtools/common/logger/Log$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/logger/Log$Level;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/sshtools/common/logger/Log$Level;->ordinal()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method public varargs log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/sshtools/synergy/ssh/ConnectionManager;->getCurrentConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->activeLoggers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/logger/FileLoggingContext;

    .line 73
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sshtools/common/logger/FileLoggingContext;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public newline()V
    .locals 2

    .line 237
    invoke-static {}, Lcom/sshtools/synergy/ssh/ConnectionManager;->getCurrentConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    .line 238
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->activeLoggers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/logger/FileLoggingContext;

    .line 240
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/sshtools/common/logger/FileLoggingContext;->newline()V

    :cond_0
    return-void
.end method

.method public open(Lcom/sshtools/synergy/ssh/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p1, p0}, Lcom/sshtools/synergy/ssh/Connection;->addEventListener(Lcom/sshtools/common/events/EventListener;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->isLoggingConnection(Lcom/sshtools/synergy/ssh/Connection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->startLogging(Lcom/sshtools/common/ssh/SshConnection;)V

    :cond_0
    return-void
.end method

.method public processEvent(Lcom/sshtools/common/events/Event;)V
    .locals 2

    .line 249
    invoke-virtual {p1}, Lcom/sshtools/common/events/Event;->getId()I

    move-result v0

    const v1, -0xfffff6

    if-eq v0, v1, :cond_0

    const v1, -0xffffed

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    const-string v0, "CONNECTION"

    invoke-virtual {p1, v0}, Lcom/sshtools/common/events/Event;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/synergy/ssh/Connection;

    .line 253
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->activeLoggers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->isLoggingConnection(Lcom/sshtools/synergy/ssh/Connection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->startLogging(Lcom/sshtools/common/ssh/SshConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;)V
    .locals 2

    .line 217
    invoke-static {}, Lcom/sshtools/synergy/ssh/ConnectionManager;->getCurrentConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    .line 218
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->activeLoggers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/logger/FileLoggingContext;

    .line 220
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/logger/FileLoggingContext;->raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startLogging(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->defaultLevel:Lcom/sshtools/common/logger/Log$Level;

    invoke-virtual {v0}, Lcom/sshtools/common/logger/Log$Level;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".level"

    invoke-direct {p0, v1, v0}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/logger/Log$Level;->valueOf(Ljava/lang/String;)Lcom/sshtools/common/logger/Log$Level;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->startLogging(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/common/logger/Log$Level;)V

    return-void
.end method

.method public startLogging(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/common/logger/Log$Level;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->activeLoggers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    const-string v0, ".filenameFormat"

    const-string v1, "${timestamp}__${uuid}.log"

    invoke-direct {p0, v0, v1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v1, ".maxFiles"

    const-string v2, "10"

    invoke-direct {p0, v1, v2}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 124
    const-string v2, ".maxSize"

    const-string v3, "20MB"

    invoke-direct {p0, v2, v3}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sshtools/common/util/IOUtils;->fromByteSize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 125
    const-string v3, ".timestampFormat"

    const-string v4, "yyyy-MM-dd-HH-mm-ss-SSS"

    invoke-direct {p0, v3, v4}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v4

    const-string v5, ".timestampPattern"

    .line 130
    invoke-direct {p0, v5}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->getPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-static {v3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    .line 128
    invoke-virtual {v4, v3}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "${timestamp}"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "${uuid}"

    .line 132
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getRemotePort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "${remotePort}"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "${remoteAddr}"

    .line 134
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getLocalPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "${localPort}"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "${localAddr}"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteIdentification()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/sshtools/common/util/Utils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "${ident}"

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/sshtools/common/util/Utils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "${user}"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->activeLoggers:Ljava/util/Map;

    new-instance v4, Lcom/sshtools/common/logger/FileLoggingContext;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v5, p2

    invoke-direct/range {v4 .. v9}, Lcom/sshtools/common/logger/FileLoggingContext;-><init>(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;IJ)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

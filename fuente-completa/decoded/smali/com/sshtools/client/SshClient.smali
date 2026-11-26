.class public Lcom/sshtools/client/SshClient;
.super Ljava/lang/Object;
.source "SshClient.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/SshClient$SshClientBuilder;,
        Lcom/sshtools/client/SshClient$OnConfiguration;,
        Lcom/sshtools/client/SshClient$InteractiveOutputListener;,
        Lcom/sshtools/client/SshClient$PreConnectedSshClientBuilder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT:J

.field public static final GUEST_USERNAME:Ljava/lang/String;


# instance fields
.field private final closeConnection:Z

.field private final con:Lcom/sshtools/synergy/ssh/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/Connection<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation
.end field

.field private final hostname:Ljava/lang/String;

.field private final onConfigure:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/SshClient$OnConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final port:I

.field private final remotePublicKeys:[Ljava/lang/String;

.field private final sshContext:Lcom/sshtools/client/SshClientContext;


# direct methods
.method public static synthetic $r8$lambda$D53TCN-ofksuSoyNqhPd-47IzHI(Ljava/time/Duration;)J
    .locals 2

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 73
    const-string v0, "maverick.guestUsername"

    const-string v1, "guest"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sshtools/client/SshClient;->GUEST_USERNAME:Ljava/lang/String;

    .line 74
    const-string v0, "maverick.defaultConnectTimeout"

    const-string v1, "30000"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/sshtools/client/SshClient;->DEFAULT_CONNECT_TIMEOUT:J

    return-void
.end method

.method private constructor <init>(Lcom/sshtools/client/SshClient$SshClientBuilder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetsshContext(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetsshContext(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sshtools/client/SshClientContext;

    invoke-direct {v0}, Lcom/sshtools/client/SshClientContext;-><init>()V

    :goto_0
    move-object v4, v0

    iput-object v4, p0, Lcom/sshtools/client/SshClient;->sshContext:Lcom/sshtools/client/SshClientContext;

    .line 563
    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgethostname(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sshtools/client/SshClient;->hostname:Ljava/lang/String;

    .line 564
    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetport(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/sshtools/client/SshClient;->port:I

    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/sshtools/client/SshClient;->closeConnection:Z

    .line 566
    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetonConfigure(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/SshClient;->onConfigure:Ljava/util/Optional;

    .line 568
    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetusername(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/sshtools/client/SshClientContext;->setUsername(Ljava/lang/String;)Lcom/sshtools/client/SshClientContext;

    .line 570
    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetstateListener(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetstateListener(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/ClientStateListener;

    invoke-virtual {v4, v0}, Lcom/sshtools/client/SshClientContext;->addStateListener(Lcom/sshtools/client/ClientStateListener;)Lcom/sshtools/client/SshClientContext;

    .line 574
    :cond_1
    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgeteventListener(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgeteventListener(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/events/EventListener;

    invoke-virtual {v4, v0}, Lcom/sshtools/client/SshClientContext;->setEventListener(Lcom/sshtools/common/events/EventListener;)V

    .line 578
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 579
    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetconnectTimeout(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-wide v5, Lcom/sshtools/client/SshClient;->DEFAULT_CONNECT_TIMEOUT:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/SshClient;->doConnect(Ljava/lang/String;ILcom/sshtools/client/SshClientContext;JLjava/util/List;)Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v0

    iput-object v0, v1, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    const/4 v0, 0x0

    .line 580
    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/sshtools/client/SshClient;->remotePublicKeys:[Ljava/lang/String;

    .line 582
    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetauthenticators(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetidentities(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 583
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetauthenticators(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 585
    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetidentities(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 586
    new-instance v3, Lcom/sshtools/client/KeyPairAuthenticator;

    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetidentities(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Set;

    move-result-object v4

    new-array v5, v0, [Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v3, v4}, Lcom/sshtools/client/KeyPairAuthenticator;-><init>([Lcom/sshtools/common/ssh/components/SshKeyPair;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 589
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->isAuthenticated()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 590
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/client/ClientAuthenticator;

    invoke-static {p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->-$$Nest$fgetconnectTimeout(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    sget-wide v5, Lcom/sshtools/client/SshClient;->DEFAULT_CONNECT_TIMEOUT:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/sshtools/client/SshClient;->authenticate(Lcom/sshtools/client/ClientAuthenticator;J)Z

    goto :goto_1

    .line 593
    :cond_5
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    return-void

    .line 594
    :cond_7
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->close()V

    .line 595
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Authentication failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/sshtools/client/SshClient$SshClientBuilder;Lcom/sshtools/client/SshClient-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/SshClient;-><init>(Lcom/sshtools/client/SshClient$SshClientBuilder;)V

    return-void
.end method

.method private constructor <init>(Lcom/sshtools/common/ssh/SshConnection;Z)V
    .locals 1

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    move-object v0, p1

    check-cast v0, Lcom/sshtools/synergy/ssh/Connection;

    iput-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 608
    iput-boolean p2, p0, Lcom/sshtools/client/SshClient;->closeConnection:Z

    .line 609
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/client/SshClient;->onConfigure:Ljava/util/Optional;

    .line 610
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p2

    check-cast p2, Lcom/sshtools/client/SshClientContext;

    iput-object p2, p0, Lcom/sshtools/client/SshClient;->sshContext:Lcom/sshtools/client/SshClientContext;

    .line 611
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/client/SshClient;->hostname:Ljava/lang/String;

    .line 612
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getRemotePort()I

    move-result p2

    iput p2, p0, Lcom/sshtools/client/SshClient;->port:I

    .line 613
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getRemotePublicKeys()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/SshClient;->remotePublicKeys:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/common/ssh/SshConnection;ZLcom/sshtools/client/SshClient-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sshtools/client/SshClient;-><init>(Lcom/sshtools/common/ssh/SshConnection;Z)V

    return-void
.end method

.method static synthetic lambda$executeCommandWithResult$1(Lcom/sshtools/client/SshClient$InteractiveOutputListener;Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 837
    invoke-virtual {p2, p0}, Lcom/sshtools/client/SessionChannelNG;->addEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V

    return-void
.end method

.method static synthetic lambda$executeCommandWithResult$2(Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 840
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/client/SessionChannelNG;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 842
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic lambda$new$0()Ljava/lang/String;
    .locals 1

    .line 568
    sget-object v0, Lcom/sshtools/client/SshClient;->GUEST_USERNAME:Ljava/lang/String;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 975
    sget-object p0, Lcom/sshtools/common/logger/Log$Level;->DEBUG:Lcom/sshtools/common/logger/Log$Level;

    invoke-static {p0}, Lcom/sshtools/common/logger/Log;->enableConsole(Lcom/sshtools/common/logger/Log$Level;)V

    .line 977
    new-instance p0, Lcom/sshtools/client/SshClientContext;

    invoke-direct {p0}, Lcom/sshtools/client/SshClientContext;-><init>()V

    .line 978
    invoke-virtual {p0}, Lcom/sshtools/client/SshClientContext;->supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    const-string v1, "rsa-sha2-256-cert-v01@openssh.com"

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->removeAllBut(Ljava/lang/String;)V

    .line 979
    invoke-static {}, Lcom/sshtools/client/SshClient$SshClientBuilder;->create()Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v0

    .line 980
    invoke-virtual {v0, p0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withSshContext(Lcom/sshtools/client/SshClientContext;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    const-string v0, "10.0.200.14"

    .line 981
    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withHostname(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    const-string v0, "root"

    .line 982
    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withUsername(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->build()Lcom/sshtools/client/SshClient;

    return-void
.end method


# virtual methods
.method public declared-synchronized addTask(Lcom/sshtools/client/tasks/Task;)Lcom/sshtools/client/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/Connection;->addTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)Lcom/sshtools/common/ssh/ConnectionAwareTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    monitor-exit p0

    return-object p1

    .line 668
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Client is no longer connected!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public authenticate(Lcom/sshtools/client/ClientAuthenticator;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 887
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    invoke-interface {p1}, Lcom/sshtools/client/ClientAuthenticator;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Authenticating with {}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->sshContext:Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getAuthenticationClient()Lcom/sshtools/client/AuthenticationProtocolClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sshtools/client/AuthenticationProtocolClient;->addAuthentication(Lcom/sshtools/client/ClientAuthenticator;)V

    .line 891
    invoke-interface {p1, p2, p3}, Lcom/sshtools/client/ClientAuthenticator;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    .line 892
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 893
    invoke-interface {p1}, Lcom/sshtools/client/ClientAuthenticator;->isCancelled()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "was cancelled"

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/sshtools/client/ClientAuthenticator;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "succeeded"

    goto :goto_0

    :cond_2
    const-string p2, "failed"

    :goto_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Authentication {}"

    invoke-static {p3, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    :cond_3
    invoke-interface {p1}, Lcom/sshtools/client/ClientAuthenticator;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_5

    .line 897
    invoke-interface {p1}, Lcom/sshtools/client/ClientAuthenticator;->isDone()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/sshtools/client/ClientAuthenticator;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1

    .line 896
    :cond_5
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "Authentication cancelled."

    const/16 p3, 0x8

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    iget-boolean v0, p0, Lcom/sshtools/client/SshClient;->closeConnection:Z

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->disconnect()V

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 736
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sshtools/client/SshClient;->closeConnection:Z

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->disconnect()V

    :cond_0
    return-void
.end method

.method protected final doConnect(Ljava/lang/String;ILcom/sshtools/client/SshClientContext;JLjava/util/List;)Lcom/sshtools/synergy/ssh/Connection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/client/SshClientContext;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->onConfigure:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->onConfigure:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClient$OnConfiguration;

    invoke-interface {v0, p3}, Lcom/sshtools/client/SshClient$OnConfiguration;->accept(Lcom/sshtools/client/SshClientContext;)V

    .line 621
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/sshtools/client/SshClientContext;->getEngine()Lcom/sshtools/synergy/nio/SshEngine;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/synergy/nio/SshEngine;->connect(Ljava/lang/String;ILcom/sshtools/synergy/nio/ProtocolContext;J)Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    move-result-object p1

    .line 622
    invoke-virtual {p1, v5, v6}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    .line 623
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_3

    .line 624
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->getLastError()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 626
    instance-of p2, p1, Ljava/io/IOException;

    if-nez p2, :cond_1

    .line 628
    instance-of p2, p1, Lcom/sshtools/common/ssh/SshException;

    if-eqz p2, :cond_2

    .line 629
    check-cast p1, Lcom/sshtools/common/ssh/SshException;

    throw p1

    .line 627
    :cond_1
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 631
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to connect to %s:%d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v2, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 633
    :cond_3
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p1

    .line 634
    new-instance p2, Lcom/sshtools/client/SshClient$1;

    invoke-direct {p2, p0, p6}, Lcom/sshtools/client/SshClient$1;-><init>(Lcom/sshtools/client/SshClient;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/sshtools/synergy/ssh/Connection;->addEventListener(Lcom/sshtools/common/events/EventListener;)V

    .line 649
    invoke-virtual {v4}, Lcom/sshtools/client/SshClientContext;->getAuthenticators()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 650
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/Connection;->getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;->waitForever()Lcom/sshtools/common/ssh/RequestFuture;

    .line 651
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/Connection;->getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 652
    :cond_4
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->close()V

    .line 653
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate user %s at %s:%d"

    .line 654
    invoke-virtual {v4}, Lcom/sshtools/client/SshClientContext;->getUsername()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p3, v2, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, p1

    :goto_1
    move-object p1, v0

    .line 660
    new-instance p2, Ljava/net/UnknownHostException;

    invoke-direct {p2, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2, p1}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 662
    throw p2
.end method

.method protected doTask(Lcom/sshtools/client/tasks/Task;J)Lcom/sshtools/client/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sshtools/client/tasks/Task;",
            ">(TT;J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient;->addTask(Lcom/sshtools/client/tasks/Task;)Lcom/sshtools/client/tasks/Task;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 744
    invoke-virtual {p1, p2, p3}, Lcom/sshtools/client/tasks/Task;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    goto :goto_0

    .line 746
    :cond_0
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->waitForever()Lcom/sshtools/common/ssh/RequestFuture;

    .line 748
    :goto_0
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->isDone()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 751
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_3

    .line 752
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->getLastError()Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 753
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->getLastError()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    .line 754
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->getLastError()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 757
    :cond_1
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->getLastError()Ljava/lang/Throwable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->getLastError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 760
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Task did not succeed but did not report an error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p1

    .line 749
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Task did not complete before the specified timeout"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 796
    const-string v2, "UTF-8"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sshtools/client/SshClient;->executeCommand(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public executeCommand(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/client/SshClient;->executeCommand(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public executeCommand(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 810
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/SshClient;->executeCommandWithResult(Ljava/lang/String;Ljava/lang/StringBuffer;JLjava/lang/String;)I

    .line 811
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 804
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sshtools/client/SshClient;->executeCommand(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public executeCommandWithResult(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sshtools/client/SshClient;->executeCommandWithResult(Ljava/lang/String;Ljava/lang/StringBuffer;J)I

    move-result p1

    return p1
.end method

.method public executeCommandWithResult(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 815
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sshtools/client/SshClient;->executeCommandWithResult(Ljava/lang/String;Ljava/lang/StringBuffer;J)I

    move-result p1

    return p1
.end method

.method public executeCommandWithResult(Ljava/lang/String;Ljava/lang/StringBuffer;J)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    const-string v5, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/SshClient;->executeCommandWithResult(Ljava/lang/String;Ljava/lang/StringBuffer;JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public executeCommandWithResult(Ljava/lang/String;Ljava/lang/StringBuffer;JLjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 832
    new-instance v0, Lcom/sshtools/client/SshClient$InteractiveOutputListener;

    invoke-direct {v0, p0, p2}, Lcom/sshtools/client/SshClient$InteractiveOutputListener;-><init>(Lcom/sshtools/client/SshClient;Ljava/lang/StringBuffer;)V

    .line 833
    invoke-static {}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->create()Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;

    move-result-object p2

    .line 834
    invoke-virtual {p2, p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->withCommand(Ljava/lang/String;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;

    move-result-object p1

    .line 835
    invoke-virtual {p1, p0}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;

    .line 836
    invoke-virtual {p1, p5}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->withEncoding(Ljava/lang/String;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;

    move-result-object p1

    new-instance p2, Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda0;-><init>(Lcom/sshtools/client/SshClient$InteractiveOutputListener;)V

    .line 837
    invoke-virtual {p1, p2}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onBeforeExecute(Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;

    move-result-object p1

    new-instance p2, Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda1;-><init>()V

    .line 838
    invoke-virtual {p1, p2}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->onTask(Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;)Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;

    move-result-object p1

    .line 845
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/CommandTask$CommandTaskBuilder;->build()Lcom/sshtools/client/tasks/CommandTask;

    move-result-object p1

    .line 847
    invoke-virtual {p0, p1, p3, p4}, Lcom/sshtools/client/SshClient;->doTask(Lcom/sshtools/client/tasks/Task;J)Lcom/sshtools/client/tasks/Task;

    .line 848
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/CommandTask;->getExitCode()I

    move-result p1

    return p1
.end method

.method public executeCommandWithResult(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 827
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/SshClient;->executeCommandWithResult(Ljava/lang/String;Ljava/lang/StringBuffer;JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAuthenticationMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->sshContext:Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getAuthenticationClient()Lcom/sshtools/client/AuthenticationProtocolClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/AuthenticationProtocolClient;->getSupportedAuthentications()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConnection()Lcom/sshtools/synergy/ssh/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    return-object v0
.end method

.method public getContext()Lcom/sshtools/client/SshClientContext;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 768
    invoke-virtual {p0, p1, v0, v1}, Lcom/sshtools/client/SshClient;->getFile(Ljava/lang/String;J)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFile(Ljava/lang/String;J)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    invoke-static {}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->create()Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withConnection(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->build()Lcom/sshtools/client/tasks/DownloadFileTask;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/client/SshClient;->doTask(Lcom/sshtools/client/tasks/Task;J)Lcom/sshtools/client/tasks/Task;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/tasks/DownloadFileTask;

    invoke-virtual {p1}, Lcom/sshtools/client/tasks/DownloadFileTask;->getDownloadedFile()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 776
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sshtools/client/SshClient;->getFile(Ljava/lang/String;Ljava/io/File;J)V

    return-void
.end method

.method public getFile(Ljava/lang/String;Ljava/io/File;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    invoke-static {}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->create()Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withConnection(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withLocalFile(Ljava/io/File;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->build()Lcom/sshtools/client/tasks/DownloadFileTask;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/sshtools/client/SshClient;->doTask(Lcom/sshtools/client/tasks/Task;J)Lcom/sshtools/client/tasks/Task;

    return-void
.end method

.method public getForwardingPolicy()Lcom/sshtools/common/forwarding/ForwardingPolicy;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getForwardingPolicy()Lcom/sshtools/common/forwarding/ForwardingPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getHostKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getHostKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIdentification()Ljava/lang/String;
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getLocalIdentification()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 970
    iget v0, p0, Lcom/sshtools/client/SshClient;->port:I

    return v0
.end method

.method public getRemoteIdentification()Ljava/lang/String;
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getRemoteIdentification()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePublicKeys()[Ljava/lang/String;
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->remotePublicKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->isDisconnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public openRemoteClient(Ljava/lang/String;ILjava/lang/String;)Lcom/sshtools/client/SshClient;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/UnauthorizedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 957
    const-string v1, "127.0.0.1"

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/sshtools/client/SshClient;->startLocalForwarding(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    .line 959
    :try_start_0
    invoke-static {}, Lcom/sshtools/client/SshClient$SshClientBuilder;->create()Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p2

    .line 960
    invoke-virtual {p2, v1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withHostname(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p2

    .line 961
    invoke-virtual {p2, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPort(I)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p2

    .line 962
    invoke-virtual {p2, p3}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withUsername(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p2

    .line 963
    invoke-virtual {p2}, Lcom/sshtools/client/SshClient$SshClientBuilder;->build()Lcom/sshtools/client/SshClient;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    invoke-virtual {p0, v1, p1}, Lcom/sshtools/client/SshClient;->stopLocalForwarding(Ljava/lang/String;I)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p0, v1, p1}, Lcom/sshtools/client/SshClient;->stopLocalForwarding(Ljava/lang/String;I)V

    .line 966
    throw p2
.end method

.method public openSessionChannel()Lcom/sshtools/client/SessionChannelNG;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-wide/32 v0, 0xea60

    const/4 v2, 0x0

    .line 933
    invoke-virtual {p0, v0, v1, v2}, Lcom/sshtools/client/SshClient;->openSessionChannel(JZ)Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    return-object v0
.end method

.method public openSessionChannel(J)Lcom/sshtools/client/SessionChannelNG;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 937
    invoke-virtual {p0, p1, p2, v0}, Lcom/sshtools/client/SshClient;->openSessionChannel(JZ)Lcom/sshtools/client/SessionChannelNG;

    move-result-object p1

    return-object p1
.end method

.method public openSessionChannel(JZ)Lcom/sshtools/client/SessionChannelNG;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 946
    new-instance v0, Lcom/sshtools/client/SessionChannelNG;

    iget-object v1, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-direct {v0, v1, p3}, Lcom/sshtools/client/SessionChannelNG;-><init>(Lcom/sshtools/common/ssh/SshConnection;Z)V

    .line 947
    iget-object p3, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {p3, v0}, Lcom/sshtools/synergy/ssh/Connection;->openChannel(Lcom/sshtools/common/ssh/Channel;)V

    .line 948
    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getOpenFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    .line 949
    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getOpenFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_0

    return-object v0

    .line 952
    :cond_0
    new-instance p3, Lcom/sshtools/common/ssh/SshException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Session was not opened after %d ms timeout threshold"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x13

    invoke-direct {p3, p1, p2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p3
.end method

.method public openSessionChannel(Z)Lcom/sshtools/client/SessionChannelNG;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-wide/32 v0, 0xea60

    .line 941
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/client/SshClient;->openSessionChannel(JZ)Lcom/sshtools/client/SessionChannelNG;

    move-result-object p1

    return-object p1
.end method

.method public putFile(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sshtools/client/SshClient;->putFile(Ljava/io/File;Ljava/lang/String;J)V

    return-void
.end method

.method public putFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 788
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sshtools/client/SshClient;->putFile(Ljava/io/File;Ljava/lang/String;J)V

    return-void
.end method

.method public putFile(Ljava/io/File;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    invoke-static {}, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;->create()Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;->withConnection(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;->withLocalFile(Ljava/io/File;)Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;->withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;->build()Lcom/sshtools/client/tasks/UploadFileTask;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/sshtools/client/SshClient;->doTask(Lcom/sshtools/client/tasks/Task;J)Lcom/sshtools/client/tasks/Task;

    return-void
.end method

.method public runTask(Lcom/sshtools/client/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sshtools/client/tasks/Task;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 909
    invoke-virtual {p0, p1, v0, v1}, Lcom/sshtools/client/SshClient;->doTask(Lcom/sshtools/client/tasks/Task;J)Lcom/sshtools/client/tasks/Task;

    return-void
.end method

.method public runTask(Lcom/sshtools/client/tasks/Task;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sshtools/client/tasks/Task;",
            ">(TT;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 905
    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/client/SshClient;->doTask(Lcom/sshtools/client/tasks/Task;J)Lcom/sshtools/client/tasks/Task;

    return-void
.end method

.method public startLocalForwarding(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/UnauthorizedException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/ConnectionProtocolClient;

    .line 699
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sshtools/client/ConnectionProtocolClient;->startLocalForwarding(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public startLocalForwarding(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/UnauthorizedException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 694
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/sshtools/client/SshClient;->startLocalForwarding(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public startRemoteForwarding(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/ConnectionProtocolClient;

    .line 714
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sshtools/client/ConnectionProtocolClient;->startRemoteForwarding(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public startRemoteForwarding(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/sshtools/client/SshClient;->startRemoteForwarding(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public stopLocalForwarding()V
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/ConnectionProtocolClient;

    .line 709
    invoke-virtual {v0}, Lcom/sshtools/client/ConnectionProtocolClient;->stopLocalForwarding()V

    return-void
.end method

.method public stopLocalForwarding(Ljava/lang/String;I)V
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/ConnectionProtocolClient;

    .line 704
    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/ConnectionProtocolClient;->stopLocalForwarding(Ljava/lang/String;I)V

    return-void
.end method

.method public stopRemoteForwarding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/ConnectionProtocolClient;

    .line 728
    invoke-virtual {v0}, Lcom/sshtools/client/ConnectionProtocolClient;->stopRemoteForwarding()V

    return-void
.end method

.method public stopRemoteForwarding(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/sshtools/client/SshClient;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/ConnectionProtocolClient;

    .line 723
    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/ConnectionProtocolClient;->stopRemoteForwarding(Ljava/lang/String;I)V

    return-void
.end method

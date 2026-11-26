.class public final Lcom/sshtools/client/SshClient$SshClientBuilder;
.super Ljava/lang/Object;
.source "SshClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/SshClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SshClientBuilder"
.end annotation


# instance fields
.field private authenticators:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sshtools/client/ClientAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field private connectTimeout:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private eventListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/events/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private hostname:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private identities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sshtools/common/ssh/components/SshKeyPair;",
            ">;"
        }
    .end annotation
.end field

.field private onConfigure:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/SshClient$OnConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private port:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sshContext:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation
.end field

.field private stateListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/ClientStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private username:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetauthenticators(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->authenticators:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectTimeout(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->connectTimeout:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventListener(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->eventListener:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethostname(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->hostname:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetidentities(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->identities:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonConfigure(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->onConfigure:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetport(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->port:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsshContext(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->sshContext:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstateListener(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->stateListener:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusername(Lcom/sshtools/client/SshClient$SshClientBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->username:Ljava/util/Optional;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->sshContext:Ljava/util/Optional;

    .line 114
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->hostname:Ljava/util/Optional;

    .line 115
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->port:Ljava/util/Optional;

    .line 116
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->username:Ljava/util/Optional;

    .line 117
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->connectTimeout:Ljava/util/Optional;

    .line 118
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->authenticators:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->identities:Ljava/util/Set;

    .line 120
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->onConfigure:Ljava/util/Optional;

    .line 121
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->stateListener:Ljava/util/Optional;

    .line 122
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->eventListener:Ljava/util/Optional;

    return-void
.end method

.method public static create(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/SshClient$PreConnectedSshClientBuilder;
    .locals 2

    .line 530
    new-instance v0, Lcom/sshtools/client/SshClient$PreConnectedSshClientBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/client/SshClient$PreConnectedSshClientBuilder;-><init>(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/SshClient-IA;)V

    return-object v0
.end method

.method public static create()Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1

    .line 521
    new-instance v0, Lcom/sshtools/client/SshClient$SshClientBuilder;

    invoke-direct {v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$withPassword$0(Ljava/util/Optional;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addAuthenticators(Ljava/util/Collection;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/client/ClientAuthenticator;",
            ">;)",
            "Lcom/sshtools/client/SshClient$SshClientBuilder;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->authenticators:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addAuthenticators([Lcom/sshtools/client/ClientAuthenticator;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 339
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->addAuthenticators(Ljava/util/Collection;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addIdentities(Ljava/util/Collection;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/ssh/components/SshKeyPair;",
            ">;)",
            "Lcom/sshtools/client/SshClient$SshClientBuilder;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->identities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addIdentities([Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 295
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->addIdentities(Ljava/util/Collection;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/sshtools/client/SshClient;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 544
    new-instance v0, Lcom/sshtools/client/SshClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/client/SshClient;-><init>(Lcom/sshtools/client/SshClient$SshClientBuilder;Lcom/sshtools/client/SshClient-IA;)V

    return-object v0
.end method

.method public onConfigure(Lcom/sshtools/client/SshClient$OnConfiguration;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 132
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->onConfigure:Ljava/util/Optional;

    return-object p0
.end method

.method public withAuthenticators(Ljava/util/Collection;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/client/ClientAuthenticator;",
            ">;)",
            "Lcom/sshtools/client/SshClient$SshClientBuilder;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->authenticators:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 375
    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->addAuthenticators(Ljava/util/Collection;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withAuthenticators([Lcom/sshtools/client/ClientAuthenticator;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 363
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withAuthenticators(Ljava/util/Collection;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withConnectTimeout(J)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 390
    invoke-static {p1, p2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withConnectTimeout(Ljava/time/Duration;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withConnectTimeout(Ljava/time/Duration;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 400
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->connectTimeout:Ljava/util/Optional;

    return-object p0
.end method

.method public withCurrentUsername(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 422
    const-string p1, "user.name"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withUsername(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withEventListener(Lcom/sshtools/common/events/EventListener;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 548
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->eventListener:Ljava/util/Optional;

    return-object p0
.end method

.method public withHost(Ljava/net/InetAddress;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 465
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withHostname(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withHostname(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 476
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->hostname:Ljava/util/Optional;

    return-object p0
.end method

.method public withIdentities(Ljava/util/Collection;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/ssh/components/SshKeyPair;",
            ">;)",
            "Lcom/sshtools/client/SshClient$SshClientBuilder;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->identities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 327
    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->addIdentities(Ljava/util/Collection;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withIdentities([Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->identities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 317
    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->addIdentities([Lcom/sshtools/common/ssh/components/SshKeyPair;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withListener(Lcom/sshtools/client/ClientStateListener;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 379
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->stateListener:Ljava/util/Optional;

    return-object p0
.end method

.method public withPassword(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 265
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPassword(Ljava/util/Optional;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withPassword(Ljava/util/Optional;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/client/SshClient$SshClientBuilder;"
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/sshtools/client/SshClient$SshClientBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder$$ExternalSyntheticLambda0;-><init>(Ljava/util/Optional;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPasswordPrompt(Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withPassword([C)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPassword(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withPasswordPrompt(Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 2

    const/4 v0, 0x1

    .line 285
    new-array v0, v0, [Lcom/sshtools/client/ClientAuthenticator;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/sshtools/client/PasswordAuthenticator;->of(Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;)Lcom/sshtools/client/PasswordAuthenticator;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->addAuthenticators([Lcom/sshtools/client/ClientAuthenticator;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withPort(I)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPort(Ljava/util/Optional;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withPort(Ljava/util/Optional;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sshtools/client/SshClient$SshClientBuilder;"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->port:Ljava/util/Optional;

    return-object p0
.end method

.method public withPrivateKeyFile(Ljava/io/File;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 2

    const/4 v0, 0x1

    .line 185
    :try_start_0
    new-array v0, v0, [Lcom/sshtools/client/ClientAuthenticator;

    new-instance v1, Lcom/sshtools/client/PrivateKeyFileAuthenticator;

    invoke-direct {v1, p1}, Lcom/sshtools/client/PrivateKeyFileAuthenticator;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->addAuthenticators([Lcom/sshtools/client/ClientAuthenticator;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 187
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public withPrivateKeyFile(Ljava/io/File;Lcom/sshtools/client/PassphrasePrompt;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 2

    const/4 v0, 0x1

    .line 200
    :try_start_0
    new-array v0, v0, [Lcom/sshtools/client/ClientAuthenticator;

    new-instance v1, Lcom/sshtools/client/PrivateKeyFileAuthenticator;

    invoke-direct {v1, p1, p2}, Lcom/sshtools/client/PrivateKeyFileAuthenticator;-><init>(Ljava/io/File;Lcom/sshtools/client/PassphrasePrompt;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->addAuthenticators([Lcom/sshtools/client/ClientAuthenticator;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 202
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-direct {p2, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public withPrivateKeyFile(Ljava/nio/file/Path;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 2

    const/4 v0, 0x1

    .line 145
    :try_start_0
    new-array v0, v0, [Lcom/sshtools/client/ClientAuthenticator;

    new-instance v1, Lcom/sshtools/client/PrivateKeyFileAuthenticator;

    invoke-direct {v1, p1}, Lcom/sshtools/client/PrivateKeyFileAuthenticator;-><init>(Ljava/nio/file/Path;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->addAuthenticators([Lcom/sshtools/client/ClientAuthenticator;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 147
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public withPrivateKeyFile(Ljava/nio/file/Path;Lcom/sshtools/client/PassphrasePrompt;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 2

    const/4 v0, 0x1

    .line 215
    :try_start_0
    new-array v0, v0, [Lcom/sshtools/client/ClientAuthenticator;

    new-instance v1, Lcom/sshtools/client/PrivateKeyFileAuthenticator;

    invoke-direct {v1, p1, p2}, Lcom/sshtools/client/PrivateKeyFileAuthenticator;-><init>(Ljava/nio/file/Path;Lcom/sshtools/client/PassphrasePrompt;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->addAuthenticators([Lcom/sshtools/client/ClientAuthenticator;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 217
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-direct {p2, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public withPrivateKeyFiles(Ljava/util/Collection;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/sshtools/client/SshClient$SshClientBuilder;"
        }
    .end annotation

    .line 227
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 228
    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPrivateKeyFile(Ljava/io/File;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withPrivateKeyFiles(Ljava/util/Collection;Lcom/sshtools/client/PassphrasePrompt;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Lcom/sshtools/client/PassphrasePrompt;",
            ")",
            "Lcom/sshtools/client/SshClient$SshClientBuilder;"
        }
    .end annotation

    .line 242
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 243
    invoke-virtual {p0, v0, p2}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPrivateKeyFile(Ljava/io/File;Lcom/sshtools/client/PassphrasePrompt;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withPrivateKeyPaths(Ljava/util/Collection;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/sshtools/client/SshClient$SshClientBuilder;"
        }
    .end annotation

    .line 157
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 158
    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPrivateKeyFile(Ljava/nio/file/Path;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withPrivateKeyPaths(Ljava/util/Collection;Lcom/sshtools/client/PassphrasePrompt;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lcom/sshtools/client/PassphrasePrompt;",
            ")",
            "Lcom/sshtools/client/SshClient$SshClientBuilder;"
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 171
    invoke-virtual {p0, v0, p2}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPrivateKeyFile(Ljava/nio/file/Path;Lcom/sshtools/client/PassphrasePrompt;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withSshContext(Lcom/sshtools/client/SshClientContext;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 511
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->sshContext:Ljava/util/Optional;

    return-object p0
.end method

.method public withTarget(Ljava/lang/String;I)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0

    .line 500
    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withHostname(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPort(I)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withTarget(Ljava/net/InetSocketAddress;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1

    .line 489
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withHostname(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPort(I)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withUsername(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 1

    .line 412
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withUsername(Ljava/util/Optional;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withUsername(Ljava/util/Optional;)Lcom/sshtools/client/SshClient$SshClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/client/SshClient$SshClientBuilder;"
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lcom/sshtools/client/SshClient$SshClientBuilder;->username:Ljava/util/Optional;

    return-object p0
.end method

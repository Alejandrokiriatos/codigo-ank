.class public Lcom/sshtools/client/AuthenticationProtocolClient;
.super Ljava/lang/Object;
.source "AuthenticationProtocolClient.java"

# interfaces
.implements Lcom/sshtools/synergy/ssh/Service;


# static fields
.field public static final SSH_MSG_USERAUTH_BANNER:I = 0x35

.field public static final SSH_MSG_USERAUTH_FAILURE:I = 0x33

.field public static final SSH_MSG_USERAUTH_REQUEST:I = 0x32

.field public static final SSH_MSG_USERAUTH_SUCCESS:I = 0x34


# instance fields
.field attempts:I

.field authIndex:I

.field authenticated:Z

.field authenticationStarted:Ljava/util/Date;

.field authenticators:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/client/ClientAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field completedAuthentications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field context:Lcom/sshtools/client/SshClientContext;

.field currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

.field noneAuthenticator:Lcom/sshtools/client/NoneAuthenticator;

.field supportedAuths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field transport:Lcom/sshtools/client/TransportProtocolClient;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sshtools/client/TransportProtocolClient;Lcom/sshtools/client/SshClientContext;Ljava/lang/String;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->authIndex:I

    .line 63
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->authenticators:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->supportedAuths:Ljava/util/Set;

    .line 66
    iput-boolean v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->authenticated:Z

    .line 68
    new-instance v0, Lcom/sshtools/client/NoneAuthenticator;

    invoke-direct {v0}, Lcom/sshtools/client/NoneAuthenticator;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->noneAuthenticator:Lcom/sshtools/client/NoneAuthenticator;

    .line 69
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->authenticationStarted:Ljava/util/Date;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->completedAuthentications:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    .line 75
    iput-object p2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->context:Lcom/sshtools/client/SshClientContext;

    .line 76
    iput-object p3, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->username:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sshtools/synergy/ssh/Connection;->setUsername(Ljava/lang/String;)V

    .line 79
    sget-object p3, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->EVENTS:Ljava/lang/Integer;

    new-instance v0, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;

    invoke-virtual {p1}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    new-instance v2, Lcom/sshtools/client/AuthenticationProtocolClient$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/sshtools/client/AuthenticationProtocolClient$1;-><init>(Lcom/sshtools/client/AuthenticationProtocolClient;Lcom/sshtools/client/SshClientContext;Lcom/sshtools/client/TransportProtocolClient;)V

    invoke-direct {v0, v1, v2}, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3, v0}, Lcom/sshtools/client/TransportProtocolClient;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    .line 87
    invoke-virtual {p1}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p2

    new-instance p3, Lcom/sshtools/client/AuthenticationProtocolClient$2;

    invoke-direct {p3, p0, p1}, Lcom/sshtools/client/AuthenticationProtocolClient$2;-><init>(Lcom/sshtools/client/AuthenticationProtocolClient;Lcom/sshtools/client/TransportProtocolClient;)V

    invoke-virtual {p2, p3}, Lcom/sshtools/synergy/ssh/Connection;->addEventListener(Lcom/sshtools/common/events/EventListener;)V

    return-void
.end method

.method private addAuthentication(Lcom/sshtools/client/ClientAuthenticator;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/sshtools/client/AuthenticationProtocolClient;->checkReady()V

    .line 338
    :cond_0
    monitor-enter p0

    .line 339
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 340
    const-string p2, "Adding {} authentication"

    invoke-interface {p1}, Lcom/sshtools/client/ClientAuthenticator;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :cond_1
    iget-object p2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v0

    .line 346
    :goto_0
    instance-of v1, p1, Lcom/sshtools/client/PasswordAuthenticator;

    if-eqz v1, :cond_6

    .line 347
    iget-object v1, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->supportedAuths:Ljava/util/Set;

    const-string v2, "keyboard-interactive"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->supportedAuths:Ljava/util/Set;

    const-string v2, "password"

    .line 348
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->context:Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v1}, Lcom/sshtools/client/SshClientContext;->getPreferKeyboardInteractiveOverPassword()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 350
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 351
    const-string v1, "We prefer keyboard-interactive over password so injecting keyboard-interactive authenticator"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->authenticators:Ljava/util/LinkedList;

    new-instance v1, Lcom/sshtools/client/AuthenticationProtocolClient$4;

    new-instance v2, Lcom/sshtools/client/PasswordOverKeyboardInteractiveCallback;

    move-object v3, p1

    check-cast v3, Lcom/sshtools/client/PasswordAuthenticator;

    invoke-direct {v2, v3}, Lcom/sshtools/client/PasswordOverKeyboardInteractiveCallback;-><init>(Lcom/sshtools/client/PasswordAuthenticator;)V

    invoke-direct {v1, p0, v2, p1}, Lcom/sshtools/client/AuthenticationProtocolClient$4;-><init>(Lcom/sshtools/client/AuthenticationProtocolClient;Lcom/sshtools/client/KeyboardInteractiveCallback;Lcom/sshtools/client/ClientAuthenticator;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->supportedAuths:Ljava/util/Set;

    const-string v1, "password"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 367
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->authenticators:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 371
    :cond_5
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->authenticators:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 375
    :cond_6
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->authenticators:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    if-eqz p2, :cond_8

    .line 379
    invoke-virtual {p0}, Lcom/sshtools/client/AuthenticationProtocolClient;->doNextAuthentication()Z

    .line 381
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkReady()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v0}, Lcom/sshtools/client/TransportProtocolClient;->getDisconnectFuture()Lcom/sshtools/synergy/nio/DisconnectRequestFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/DisconnectRequestFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->noneAuthenticator:Lcom/sshtools/client/NoneAuthenticator;

    invoke-virtual {v0}, Lcom/sshtools/client/NoneAuthenticator;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 391
    const-string v0, "Authentication protocol is NOT ready"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->noneAuthenticator:Lcom/sshtools/client/NoneAuthenticator;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lcom/sshtools/client/NoneAuthenticator;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    .line 394
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->noneAuthenticator:Lcom/sshtools/client/NoneAuthenticator;

    invoke-virtual {v0}, Lcom/sshtools/client/NoneAuthenticator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    const-string v0, "Authentication protocol is ready"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 395
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Timeout waiting for authentication protocol to start"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    .line 387
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SSH client has been disconnected!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAuthentication(Lcom/sshtools/client/ClientAuthenticator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 329
    invoke-direct {p0, p1, v0}, Lcom/sshtools/client/AuthenticationProtocolClient;->addAuthentication(Lcom/sshtools/client/ClientAuthenticator;Z)V

    return-void
.end method

.method public declared-synchronized addAuthentication(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/client/ClientAuthenticator;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    .line 323
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/ClientAuthenticator;

    .line 324
    invoke-virtual {p0, v0}, Lcom/sshtools/client/AuthenticationProtocolClient;->addAuthentication(Lcom/sshtools/client/ClientAuthenticator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 326
    :cond_0
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

.method public declared-synchronized doNextAuthentication()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    if-nez v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->authenticators:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->authenticators:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/ClientAuthenticator;

    iput-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    .line 288
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "Starting {} authentication"

    iget-object v1, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    invoke-interface {v1}, Lcom/sshtools/client/ClientAuthenticator;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :cond_0
    iget v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->attempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->attempts:I

    .line 293
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    iget-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    iget-object v3, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->username:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/sshtools/client/ClientAuthenticator;->authenticate(Lcom/sshtools/client/TransportProtocolClient;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return v1

    .line 297
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 281
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Authentication in progress!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIdleLog()Ljava/lang/String;
    .locals 2

    .line 409
    iget v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->attempts:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d authentication attempts made"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdleTimeoutSeconds()I
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v0}, Lcom/sshtools/client/TransportProtocolClient;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getIdleAuthenticationTimeoutSeconds()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 308
    const-string v0, "ssh-userauth"

    return-object v0
.end method

.method public getSupportedAuthentications()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->supportedAuths:Ljava/util/Set;

    return-object v0
.end method

.method public idle()Z
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    const/16 v1, 0xb

    const-string v2, "Idle unauthenticated connection"

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/client/TransportProtocolClient;->disconnect(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public processMessage([B)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-string v0, "SSH_MSG_USERAUTH_FAILURE received auths="

    .line 117
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 125
    invoke-interface {v2, v1}, Lcom/sshtools/client/ClientAuthenticator;->processMessage(Lcom/sshtools/common/util/ByteArrayReader;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v3

    .line 128
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->reset()V

    :cond_1
    const-wide/16 v4, 0x1

    .line 131
    invoke-virtual {v1, v4, v5}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    const/4 v2, 0x0

    .line 133
    aget-byte p1, p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    packed-switch p1, :pswitch_data_0

    .line 245
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v2

    .line 229
    :pswitch_0
    :try_start_2
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 230
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->context:Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getBannerDisplay()Lcom/sshtools/client/BannerDisplay;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->context:Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getBannerDisplay()Lcom/sshtools/client/BannerDisplay;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sshtools/client/BannerDisplay;->displayBanner(Ljava/lang/String;)V

    .line 234
    :cond_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 235
    const-string p1, "SSH_MSG_USERAUTH_BANNER received"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 245
    :cond_3
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v3

    .line 136
    :pswitch_1
    :try_start_3
    iput-boolean v3, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->authenticated:Z

    .line 137
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 138
    const-string p1, "SSH_MSG_USERAUTH_SUCCESS received"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_4
    new-instance p1, Lcom/sshtools/client/ConnectionProtocolClient;

    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    iget-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->username:Ljava/lang/String;

    invoke-direct {p1, v0, v2}, Lcom/sshtools/client/ConnectionProtocolClient;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/sshtools/client/AuthenticationProtocolClient;->stop()V

    .line 144
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/TransportProtocolClient;->setActiveService(Lcom/sshtools/synergy/ssh/Service;)V

    .line 145
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->start()V

    .line 148
    iget-object p1, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 150
    :try_start_4
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->completedAuthentications:Ljava/util/List;

    iget-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    invoke-interface {v2}, Lcom/sshtools/client/ClientAuthenticator;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    invoke-interface {v0}, Lcom/sshtools/client/ClientAuthenticator;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v0}, Lcom/sshtools/client/TransportProtocolClient;->getConnectFuture()Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    move-result-object v0

    iget-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v2}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->connected(Lcom/sshtools/synergy/nio/ProtocolEngine;Lcom/sshtools/synergy/ssh/Connection;)V

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    invoke-interface {v0}, Lcom/sshtools/client/ClientAuthenticator;->success()V

    .line 160
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    new-instance v2, Lcom/sshtools/common/events/Event;

    const v4, -0xffffee

    invoke-direct {v2, p0, v4, v3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v4, "CONNECTION"

    iget-object v5, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    .line 168
    invoke-virtual {v5}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v5

    .line 166
    invoke-virtual {v2, v4, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    const-string v4, "AUTHENTICATION_METHODS"

    iget-object v5, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->completedAuthentications:Ljava/util/List;

    .line 169
    invoke-virtual {v2, v4, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    const-string v4, "OP_STARTED"

    iget-object v5, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->authenticationStarted:Ljava/util/Date;

    .line 172
    invoke-virtual {v2, v4, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    const-string v4, "OP_FINISHED"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 175
    invoke-virtual {v2, v4, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v2

    .line 161
    invoke-interface {v0, v2}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 179
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 245
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v3

    :catchall_0
    move-exception v0

    .line 179
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 183
    :pswitch_2
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBoolean()Z

    move-result v4

    .line 186
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_6
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->supportedAuths:Ljava/util/Set;

    .line 193
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 194
    iget-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->supportedAuths:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_7
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 199
    :try_start_7
    iget-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    invoke-interface {v2}, Lcom/sshtools/client/ClientAuthenticator;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "none"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 200
    iget-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v2}, Lcom/sshtools/client/TransportProtocolClient;->getConnectFuture()Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    move-result-object v2

    iget-object v5, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v5}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;->connected(Lcom/sshtools/synergy/nio/ProtocolEngine;Lcom/sshtools/synergy/ssh/Connection;)V

    :cond_8
    if-eqz v4, :cond_9

    .line 204
    iget-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->completedAuthentications:Ljava/util/List;

    iget-object v5, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    invoke-interface {v5}, Lcom/sshtools/client/ClientAuthenticator;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lcom/sshtools/client/ClientAuthenticator;->success(Z[Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_9
    iget-object p1, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    invoke-interface {p1}, Lcom/sshtools/client/ClientAuthenticator;->failure()V

    .line 210
    :goto_1
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 p1, 0x0

    .line 211
    :try_start_8
    iput-object p1, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    .line 212
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 214
    :try_start_9
    invoke-virtual {p0}, Lcom/sshtools/client/AuthenticationProtocolClient;->doNextAuthentication()Z

    move-result p1

    if-nez p1, :cond_a

    .line 215
    iget-object p1, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    sget-object v2, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->EVENTS:Ljava/lang/Integer;

    new-instance v5, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;

    iget-object v6, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v6}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v6

    new-instance v7, Lcom/sshtools/client/AuthenticationProtocolClient$3;

    invoke-direct {v7, p0, v4}, Lcom/sshtools/client/AuthenticationProtocolClient$3;-><init>(Lcom/sshtools/client/AuthenticationProtocolClient;Z)V

    invoke-direct {v5, v6, v7}, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v2, v5}, Lcom/sshtools/client/TransportProtocolClient;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    .line 224
    :cond_a
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 245
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v3

    :catchall_1
    move-exception p1

    .line 212
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p1

    :catchall_2
    move-exception p1

    .line 224
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception p1

    .line 245
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 246
    throw p1

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 251
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "Starting Authentication Protocol"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->noneAuthenticator:Lcom/sshtools/client/NoneAuthenticator;

    invoke-direct {p0, v0, v1}, Lcom/sshtools/client/AuthenticationProtocolClient;->addAuthentication(Lcom/sshtools/client/ClientAuthenticator;Z)V

    .line 265
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->context:Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getAuthenticators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->context:Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getAuthenticators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/ClientAuthenticator;

    .line 267
    invoke-direct {p0, v2, v1}, Lcom/sshtools/client/AuthenticationProtocolClient;->addAuthentication(Lcom/sshtools/client/ClientAuthenticator;Z)V

    goto :goto_0

    .line 270
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 272
    const-string v2, "Faild to send none authentication request"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v0}, Lcom/sshtools/client/TransportProtocolClient;->disconnected()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 301
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 302
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Stopping Authentication Protocol"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

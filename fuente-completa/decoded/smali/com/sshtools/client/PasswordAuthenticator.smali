.class public Lcom/sshtools/client/PasswordAuthenticator;
.super Lcom/sshtools/client/SimpleClientAuthenticator;
.source "PasswordAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;
    }
.end annotation


# instance fields
.field private lastPassword:Ljava/lang/String;

.field private final password:Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;


# direct methods
.method constructor <init>(Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/sshtools/client/SimpleClientAuthenticator;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sshtools/client/PasswordAuthenticator;->password:Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/sshtools/client/SimpleClientAuthenticator;-><init>()V

    .line 70
    new-instance v0, Lcom/sshtools/client/PasswordAuthenticator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/sshtools/client/PasswordAuthenticator$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sshtools/client/PasswordAuthenticator;->password:Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/sshtools/client/SimpleClientAuthenticator;-><init>()V

    .line 80
    new-instance v0, Lcom/sshtools/client/PasswordAuthenticator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/sshtools/client/PasswordAuthenticator$$ExternalSyntheticLambda2;-><init>([C)V

    iput-object v0, p0, Lcom/sshtools/client/PasswordAuthenticator;->password:Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;

    return-void
.end method

.method public static forPassword(Ljava/lang/String;)Lcom/sshtools/client/PasswordAuthenticator;
    .locals 2

    .line 49
    new-instance v0, Lcom/sshtools/client/PasswordAuthenticator;

    new-instance v1, Lcom/sshtools/client/PasswordAuthenticator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sshtools/client/PasswordAuthenticator$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sshtools/client/PasswordAuthenticator;-><init>(Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;)V

    return-object v0
.end method

.method public static forPassword([C)Lcom/sshtools/client/PasswordAuthenticator;
    .locals 2

    .line 53
    new-instance v0, Lcom/sshtools/client/PasswordAuthenticator;

    new-instance v1, Lcom/sshtools/client/PasswordAuthenticator$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sshtools/client/PasswordAuthenticator$$ExternalSyntheticLambda3;-><init>([C)V

    invoke-direct {v0, v1}, Lcom/sshtools/client/PasswordAuthenticator;-><init>(Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;)V

    return-object v0
.end method

.method static synthetic lambda$forPassword$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$forPassword$1([C)Ljava/lang/String;
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method static synthetic lambda$new$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$3([C)Ljava/lang/String;
    .locals 1

    .line 80
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static of(Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;)Lcom/sshtools/client/PasswordAuthenticator;
    .locals 1

    .line 45
    new-instance v0, Lcom/sshtools/client/PasswordAuthenticator;

    invoke-direct {v0, p0}, Lcom/sshtools/client/PasswordAuthenticator;-><init>(Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;)V

    return-object v0
.end method


# virtual methods
.method public authenticate(Lcom/sshtools/client/TransportProtocolClient;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/sshtools/client/PasswordAuthenticator;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/PasswordAuthenticator;->lastPassword:Ljava/lang/String;

    .line 101
    invoke-static {v0}, Lcom/sshtools/synergy/util/EncodingUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 102
    invoke-static {v6}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v6, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/sshtools/client/PasswordAuthenticator;->cancel()V

    return-void

    .line 107
    :cond_0
    new-instance v1, Lcom/sshtools/client/PasswordAuthenticator$1;

    const-string v4, "ssh-connection"

    const-string v5, "password"

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/sshtools/client/PasswordAuthenticator$1;-><init>(Lcom/sshtools/client/PasswordAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p1, v1}, Lcom/sshtools/client/TransportProtocolClient;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void
.end method

.method public declared-synchronized done(Z)V
    .locals 3

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-super {p0, p1}, Lcom/sshtools/client/SimpleClientAuthenticator;->done(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/sshtools/client/PasswordAuthenticator;->password:Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;

    iget-object v1, p0, Lcom/sshtools/client/PasswordAuthenticator;->lastPassword:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p0}, Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;->completed(ZLjava/lang/String;Lcom/sshtools/client/ClientAuthenticator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 93
    :try_start_2
    iget-object v1, p0, Lcom/sshtools/client/PasswordAuthenticator;->password:Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;

    iget-object v2, p0, Lcom/sshtools/client/PasswordAuthenticator;->lastPassword:Ljava/lang/String;

    invoke-interface {v1, p1, v2, p0}, Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;->completed(ZLjava/lang/String;Lcom/sshtools/client/ClientAuthenticator;)V

    .line 94
    throw v0

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 128
    const-string v0, "password"

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sshtools/client/PasswordAuthenticator;->password:Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;

    invoke-interface {v0}, Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/sshtools/client/SshCompatibilityUtils;
.super Ljava/lang/Object;
.source "SshCompatibilityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/SshCompatibilityUtils$ConfigurationCollector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHostKey(Ljava/lang/String;I)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, p1, v0}, Lcom/sshtools/client/SshCompatibilityUtils;->getHostKey(Ljava/lang/String;ILjava/lang/String;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static getHostKey(Ljava/lang/String;ILjava/lang/String;)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/sshtools/client/SshClient$SshClientBuilder;->create()Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withTarget(Ljava/lang/String;I)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    new-instance p1, Lcom/sshtools/client/SshCompatibilityUtils$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/sshtools/client/SshCompatibilityUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->onConfigure(Lcom/sshtools/client/SshClient$OnConfiguration;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->build()Lcom/sshtools/client/SshClient;

    move-result-object p0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/Connection;->getHostKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 62
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static getRemoteClient(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lcom/sshtools/client/SshClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/sshtools/client/SshClient$SshClientBuilder;->create()Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withTarget(Ljava/lang/String;I)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    .line 82
    invoke-virtual {p0, p2}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withUsername(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    .line 83
    invoke-virtual {p0, p3}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPassword(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    new-instance p1, Lcom/sshtools/client/SshCompatibilityUtils$$ExternalSyntheticLambda1;

    invoke-direct {p1, p4}, Lcom/sshtools/client/SshCompatibilityUtils$$ExternalSyntheticLambda1;-><init>(Z)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->onConfigure(Lcom/sshtools/client/SshClient$OnConfiguration;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->build()Lcom/sshtools/client/SshClient;

    move-result-object p0

    .line 87
    new-instance p1, Lcom/sshtools/client/PasswordAuthenticator;

    invoke-direct {p1, p3}, Lcom/sshtools/client/PasswordAuthenticator;-><init>(Ljava/lang/String;)V

    const-wide/16 p2, 0x7530

    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/client/SshClient;->authenticate(Lcom/sshtools/client/ClientAuthenticator;J)Z

    .line 89
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 90
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Bas username or password"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRemoteConfiguration(Ljava/lang/String;I)Lcom/sshtools/common/ssh/SshConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/sshtools/client/SshClient$SshClientBuilder;->create()Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withTarget(Ljava/lang/String;I)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->build()Lcom/sshtools/client/SshClient;

    move-result-object p0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 73
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static getSupportedHostKeyAlgorithms(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/sshtools/client/SshClient$SshClientBuilder;->create()Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withTarget(Ljava/lang/String;I)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->build()Lcom/sshtools/client/SshClient;

    move-result-object p0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->getRemotePublicKeys()[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 39
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static getSupportedHostKeys(Ljava/lang/String;I)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    invoke-static {p0, p1}, Lcom/sshtools/client/SshCompatibilityUtils;->getSupportedHostKeyAlgorithms(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 54
    invoke-static {p0, p1, v4}, Lcom/sshtools/client/SshCompatibilityUtils;->getHostKey(Ljava/lang/String;ILjava/lang/String;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$getHostKey$0(Ljava/lang/String;Lcom/sshtools/client/SshClientContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1, p0}, Lcom/sshtools/client/SshClientContext;->setPreferredPublicKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getRemoteClient$1(ZLcom/sshtools/client/SshClientContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 84
    invoke-virtual {p1, p0}, Lcom/sshtools/client/SshClientContext;->setSocketOptionTcpNoDelay(Z)V

    return-void
.end method

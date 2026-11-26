.class public Lcom/sshtools/common/auth/UniversalAuthenticationProvider;
.super Ljava/lang/Object;
.source "UniversalAuthenticationProvider.java"

# interfaces
.implements Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;


# instance fields
.field accountDatabase:Lcom/sshtools/common/auth/UniversalAuthenticatorAccountDatabase;

.field hostname:Ljava/lang/String;

.field port:I


# direct methods
.method public constructor <init>(Lcom/sshtools/common/auth/UniversalAuthenticatorAccountDatabase;)V
    .locals 2

    .line 50
    const-string v0, "gateway.jadaptive.com"

    const/16 v1, 0x1bb

    invoke-direct {p0, p1, v0, v1}, Lcom/sshtools/common/auth/UniversalAuthenticationProvider;-><init>(Lcom/sshtools/common/auth/UniversalAuthenticatorAccountDatabase;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/auth/UniversalAuthenticatorAccountDatabase;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1bb

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/sshtools/common/auth/UniversalAuthenticationProvider;-><init>(Lcom/sshtools/common/auth/UniversalAuthenticatorAccountDatabase;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/auth/UniversalAuthenticatorAccountDatabase;Ljava/lang/String;I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sshtools/common/auth/UniversalAuthenticationProvider;->accountDatabase:Lcom/sshtools/common/auth/UniversalAuthenticatorAccountDatabase;

    .line 59
    iput-object p2, p0, Lcom/sshtools/common/auth/UniversalAuthenticationProvider;->hostname:Ljava/lang/String;

    .line 60
    iput p3, p0, Lcom/sshtools/common/auth/UniversalAuthenticationProvider;->port:I

    return-void
.end method

.method private getGatewayKeys(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/sshtools/common/auth/UniversalAuthenticationProvider;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget v1, p0, Lcom/sshtools/common/auth/UniversalAuthenticationProvider;->port:I

    const/16 v2, 0x1bb

    if-eq v1, v2, :cond_0

    .line 87
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    iget v1, p0, Lcom/sshtools/common/auth/UniversalAuthenticationProvider;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 90
    :cond_0
    const-string v1, "/app/api/agent/authorizedKeys/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 99
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 100
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {p1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPublicKey(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 97
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method


# virtual methods
.method public add(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 125
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public checkKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/auth/UniversalAuthenticationProvider;->isAuthorizedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z

    move-result p1

    return p1
.end method

.method public getKeys(Lcom/sshtools/common/ssh/SshConnection;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/sshtools/common/publickey/SshPublicKeyFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isAuthorizedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/sshtools/common/auth/UniversalAuthenticationProvider;->accountDatabase:Lcom/sshtools/common/auth/UniversalAuthenticatorAccountDatabase;

    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/sshtools/common/auth/UniversalAuthenticatorAccountDatabase;->getAccounts(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 70
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    invoke-direct {p0, v1}, Lcom/sshtools/common/auth/UniversalAuthenticationProvider;->getGatewayKeys(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public remove(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 119
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

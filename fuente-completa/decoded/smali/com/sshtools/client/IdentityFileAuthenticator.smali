.class public Lcom/sshtools/client/IdentityFileAuthenticator;
.super Lcom/sshtools/client/PublicKeyAuthenticator;
.source "IdentityFileAuthenticator.java"


# instance fields
.field private currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

.field private currentPath:Ljava/nio/file/Path;

.field private identities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private lastPassphrase:Ljava/lang/String;

.field private passphrase:Lcom/sshtools/client/PassphrasePrompt;


# direct methods
.method public constructor <init>(Lcom/sshtools/client/PassphrasePrompt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;-><init>()V

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Lcom/sshtools/client/IdentityFileAuthenticator;->collectIdentities(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->identities:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->passphrase:Lcom/sshtools/client/PassphrasePrompt;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lcom/sshtools/client/PassphrasePrompt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lcom/sshtools/client/PassphrasePrompt;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->identities:Ljava/util/List;

    .line 57
    iput-object p2, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->passphrase:Lcom/sshtools/client/PassphrasePrompt;

    return-void
.end method

.method public static collectIdentities(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, ".ssh"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 82
    new-instance p0, Ljava/util/ArrayList;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/nio/file/Path;

    const-string v3, "id_ed25519.pub"

    .line 83
    invoke-interface {v0, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "id_ed448.pub"

    .line 84
    invoke-interface {v0, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "id_rsa.pub"

    .line 85
    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "id_ecdsa.pub"

    .line 86
    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v2, v1

    .line 82
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 89
    :cond_0
    invoke-interface {v0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p0

    const-string v1, "glob:**/*.pub"

    invoke-virtual {p0, v1}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object p0

    .line 90
    invoke-static {v0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 91
    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sshtools/client/IdentityFileAuthenticator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sshtools/client/IdentityFileAuthenticator$$ExternalSyntheticLambda0;-><init>(Ljava/nio/file/PathMatcher;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 92
    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 90
    :try_start_1
    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method


# virtual methods
.method public declared-synchronized done(Z)V
    .locals 3

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-super {p0, p1}, Lcom/sshtools/client/PublicKeyAuthenticator;->done(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->passphrase:Lcom/sshtools/client/PassphrasePrompt;

    iget-object v1, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->lastPassphrase:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p0}, Lcom/sshtools/client/PassphrasePrompt;->completed(ZLjava/lang/String;Lcom/sshtools/client/ClientAuthenticator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 102
    :try_start_2
    iget-object v1, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->passphrase:Lcom/sshtools/client/PassphrasePrompt;

    iget-object v2, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->lastPassphrase:Ljava/lang/String;

    invoke-interface {v1, p1, v2, p0}, Lcom/sshtools/client/PassphrasePrompt;->completed(ZLjava/lang/String;Lcom/sshtools/client/ClientAuthenticator;)V

    .line 103
    throw v0

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected getAuthenticatingKey()Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->currentPath:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->currentPath:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 119
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse(Ljava/nio/file/Path;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object v1

    .line 121
    invoke-interface {v1}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->isPassphraseProtected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcom/sshtools/client/IdentityFileAuthenticator;->getPassphrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->lastPassphrase:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->lastPassphrase:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-object v0
.end method

.method public getCurrentPath()Ljava/nio/file/Path;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->currentPath:Ljava/nio/file/Path;

    return-object v0
.end method

.method protected getNextKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-object v0
.end method

.method public getPassphrase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->passphrase:Lcom/sshtools/client/PassphrasePrompt;

    invoke-interface {v0, p1}, Lcom/sshtools/client/PassphrasePrompt;->getPasshrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected hasCredentialsRemaining()Z
    .locals 3

    .line 131
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->identities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->identities:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->currentPath:Ljava/nio/file/Path;

    .line 135
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "Trying identity file {}"

    iget-object v2, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->currentPath:Ljava/nio/file/Path;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->currentPath:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/publickey/SshKeyUtils;->getPublicKey(Ljava/nio/file/Path;)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 142
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const-string v0, "Authenticating with key {}"

    iget-object v2, p0, Lcom/sshtools/client/IdentityFileAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-static {v2}, Lcom/sshtools/common/publickey/SshKeyUtils;->getFingerprint(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 149
    const-string v2, "Failed to parse identity file"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return v1
.end method

.class public Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;
.super Lcom/sshtools/common/auth/AbstractPublicKeyAuthenticationProvider;
.source "AuthorizedKeysPublicKeyAuthenticationProvider.java"


# instance fields
.field protected authorizedKeysFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/sshtools/common/auth/AbstractPublicKeyAuthenticationProvider;-><init>()V

    .line 56
    const-string v0, ".ssh/authorized_keys"

    iput-object v0, p0, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->authorizedKeysFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/sshtools/common/auth/AbstractPublicKeyAuthenticationProvider;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->authorizedKeysFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p3}, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->getAuthorizedKeysInputStream(Lcom/sshtools/common/ssh/SshConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 115
    :try_start_0
    new-instance v1, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;

    invoke-direct {v1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;-><init>()V

    .line 116
    invoke-virtual {v1, v0}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->load(Ljava/io/InputStream;)V

    .line 117
    invoke-virtual {v1, p1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->isAuthorizedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    invoke-virtual {v1, p1, p2}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->addKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p3}, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->getAuthorizedKeysOutputStream(Lcom/sshtools/common/ssh/SshConnection;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 120
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->save(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 121
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    .line 119
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_3

    .line 114
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
.end method

.method public checkKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->isAuthorizedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z

    move-result p1

    return p1
.end method

.method protected getAuthorizedKeysInputStream(Lcom/sshtools/common/ssh/SshConnection;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1}, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->getFile(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method protected getAuthorizedKeysOutputStream(Lcom/sshtools/common/ssh/SshConnection;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1}, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->getFile(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    .line 107
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method protected getFile(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/policy/FileSystemPolicy;

    .line 153
    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    .line 154
    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->getFileFactory()Lcom/sshtools/common/policy/FileFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sshtools/common/policy/FileFactory;->getFileFactory(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->authorizedKeysFile:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->authorizedKeysFile:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    return-object p1

    .line 156
    :cond_0
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFileFactory;->getDefaultPath()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    iget-object v0, p0, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->authorizedKeysFile:Ljava/lang/String;

    .line 157
    invoke-interface {p1, v0}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    return-object p1
.end method

.method public getKeys(Lcom/sshtools/common/ssh/SshConnection;)Ljava/util/Iterator;
    .locals 3
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

    .line 143
    invoke-virtual {p0, p1}, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->getAuthorizedKeysInputStream(Lcom/sshtools/common/ssh/SshConnection;)Ljava/io/InputStream;

    move-result-object p1

    .line 144
    :try_start_0
    new-instance v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;

    invoke-direct {v0}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;-><init>()V

    .line 145
    invoke-virtual {v0, p1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->load(Ljava/io/InputStream;)V

    .line 146
    new-instance v1, Lcom/sshtools/common/auth/KeysIterator;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->getKeys()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/sshtools/common/auth/KeysIterator;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 143
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public isAuthorizedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z
    .locals 1

    .line 91
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->getAuthorizedKeysInputStream(Lcom/sshtools/common/ssh/SshConnection;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    new-instance v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;

    invoke-direct {v0}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;-><init>()V

    .line 93
    invoke-virtual {v0, p2}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->load(Ljava/io/InputStream;)V

    .line 94
    invoke-virtual {v0, p1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->isAuthorizedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    .line 95
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    .line 91
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public remove(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p2}, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->getAuthorizedKeysInputStream(Lcom/sshtools/common/ssh/SshConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 130
    :try_start_0
    new-instance v1, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;

    invoke-direct {v1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;-><init>()V

    .line 131
    invoke-virtual {v1, v0}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->load(Ljava/io/InputStream;)V

    .line 132
    invoke-virtual {v1, p1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->isAuthorizedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 133
    new-array v2, v2, [Lcom/sshtools/common/ssh/components/SshPublicKey;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->removeKeys([Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    .line 134
    invoke-virtual {p0, p2}, Lcom/sshtools/common/auth/AuthorizedKeysPublicKeyAuthenticationProvider;->getAuthorizedKeysOutputStream(Lcom/sshtools/common/ssh/SshConnection;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 135
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyFile;->save(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 136
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    .line 134
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_3

    .line 129
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
.end method

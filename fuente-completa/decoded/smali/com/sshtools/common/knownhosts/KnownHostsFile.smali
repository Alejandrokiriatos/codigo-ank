.class public Lcom/sshtools/common/knownhosts/KnownHostsFile;
.super Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;
.source "KnownHostsFile.java"


# instance fields
.field private file:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/sshtools/common/knownhosts/KnownHostsFile;->defaultKnownHostsFile()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sshtools/common/knownhosts/KnownHostsFile;-><init>(Ljava/nio/file/Path;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsFile;-><init>(Ljava/nio/file/Path;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsFile;->file:Ljava/nio/file/Path;

    const/4 v0, 0x0

    .line 52
    :try_start_0
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsFile;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 54
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 52
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 55
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static defaultKnownHostsFile()Ljava/nio/file/Path;
    .locals 4

    .line 41
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ".ssh"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "known_hosts"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFile()Ljava/nio/file/Path;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsFile;->file:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getKnownHostsFile()Ljava/io/File;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsFile;->file:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public isHostFileWriteable()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsFile;->file:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method protected onHostKeyAdded(Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ")V"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsFile;->save()V

    return-void
.end method

.method protected onHostKeyMismatch(Ljava/lang/String;Ljava/util/List;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    return-void
.end method

.method protected onHostKeyRemoved(Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ")V"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsFile;->save()V

    return-void
.end method

.method protected onHostKeyUpdated(Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsFile;->save()V

    return-void
.end method

.method protected onInvalidHostEntry(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    return-void
.end method

.method protected onRevokedKey(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0

    return-void
.end method

.method protected onUnknownHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    return-void
.end method

.method protected save()V
    .locals 3

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsFile;->store()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to store known_hosts file"

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public store()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsFile;->file:Ljava/nio/file/Path;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsFile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 60
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

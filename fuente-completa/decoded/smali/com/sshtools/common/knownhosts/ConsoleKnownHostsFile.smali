.class public Lcom/sshtools/common/knownhosts/ConsoleKnownHostsFile;
.super Lcom/sshtools/common/knownhosts/KnownHostsFile;
.source "ConsoleKnownHostsFile.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/sshtools/common/knownhosts/KnownHostsFile;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsFile;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsFile;-><init>(Ljava/nio/file/Path;)V

    return-void
.end method

.method private getResponse(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            "Ljava/util/List<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v1, ""

    .line 109
    :goto_0
    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "ALWAYS"

    if-nez v3, :cond_3

    const-string v3, "NO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 110
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/ConsoleKnownHostsFile;->isHostFileWriteable()Z

    move-result v3

    if-nez v3, :cond_3

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/ConsoleKnownHostsFile;->isHostFileWriteable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Yes|No|Always"

    goto :goto_1

    :cond_1
    const-string v1, "Yes|No"

    .line 113
    :goto_1
    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/ConsoleKnownHostsFile;->isHostFileWriteable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Always option disabled, host file is not writeable"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Do you want to allow this host key? ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 120
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "Failed to read response"

    const/4 p3, 0x5

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 126
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 128
    invoke-virtual {p0, v0}, Lcom/sshtools/common/knownhosts/ConsoleKnownHostsFile;->removeEntries(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    goto :goto_2

    .line 132
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 p3, 0x0

    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/common/knownhosts/ConsoleKnownHostsFile;->allowHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Z)V

    .line 136
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/ConsoleKnownHostsFile;->isHostFileWriteable()Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 p3, 0x1

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/common/knownhosts/ConsoleKnownHostsFile;->allowHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected onHostKeyMismatch(Ljava/lang/String;Ljava/util/List;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 7
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

    .line 64
    const-string v0, "("

    .line 0
    const-string v1, "The current allowed keys for "

    const-string v2, "The host key supplied by "

    .line 64
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p3}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-interface {p3}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getFingerprint()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p3}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") are:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 69
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/sshtools/common/publickey/SshKeyUtils;->getFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcom/sshtools/common/knownhosts/ConsoleKnownHostsFile;->getResponse(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected onInvalidHostEntry(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/ConsoleKnownHostsFile;->getKnownHostsFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid host entry in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected onRevokedKey(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Lcom/sshtools/common/knownhosts/KnownHostsFile;->onRevokedKey(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    return-void
.end method

.method public onUnknownHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 5

    const-string v0, "The host key ("

    const-string v1, "The host "

    .line 90
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is currently unknown to the system"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object v3

    const-string v4, "SHA256"

    invoke-static {v3, v4}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getFingerprint([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") fingerprint is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sshtools/common/knownhosts/ConsoleKnownHostsFile;->getResponse(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

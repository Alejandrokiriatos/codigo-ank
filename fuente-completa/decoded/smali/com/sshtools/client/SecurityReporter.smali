.class public Lcom/sshtools/client/SecurityReporter;
.super Ljava/lang/Object;
.source "SecurityReporter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance p0, Lcom/sshtools/client/SshClientContext;

    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    invoke-direct {p0, v0}, Lcom/sshtools/client/SshClientContext;-><init>(Lcom/sshtools/common/ssh/SecurityLevel;)V

    .line 39
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Algorithm"

    const-string v2, "Score"

    const-string v3, "Security Level"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%-15s%-50s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "#####################################################################################"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Ciphers"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/sshtools/client/SshClientContext;->supportedCiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->order()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "%-15s%-50s%d"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/sshtools/client/SshClientContext;->supportedCiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/SecureComponent;

    .line 45
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/ssh/SecurityLevel;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Macs"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sshtools/client/SshClientContext;->supportedMacsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->order()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/sshtools/client/SshClientContext;->supportedMacsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/SecureComponent;

    .line 53
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/ssh/SecurityLevel;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Public Keys"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-----------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/sshtools/client/SshClientContext;->supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->order()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/sshtools/client/SshClientContext;->supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/SecureComponent;

    .line 61
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/ssh/SecurityLevel;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 64
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Key Exchange"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/sshtools/client/SshClientContext;->supportedKeyExchanges()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->order()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/sshtools/client/SshClientContext;->supportedKeyExchanges()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/SecureComponent;

    .line 70
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/ssh/SecurityLevel;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SecureComponent;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    return-void
.end method

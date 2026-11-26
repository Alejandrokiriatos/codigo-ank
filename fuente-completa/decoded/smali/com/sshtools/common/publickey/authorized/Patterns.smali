.class public Lcom/sshtools/common/publickey/authorized/Patterns;
.super Ljava/lang/Object;
.source "Patterns.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertToRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 100
    const-string v0, "\\."

    const-string v1, "."

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 101
    const-string v0, "*"

    const-string v2, ".*"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 102
    const-string v0, "?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "!*.dialup.example.com"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "*.example.com"

    aput-object v5, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v6, "foo.example.com"

    invoke-static {v1, v6}, Lcom/sshtools/common/publickey/authorized/Patterns;->matchesWithCIDR(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Expecting true: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v6, "foo.dialup.example.com"

    invoke-static {v1, v6}, Lcom/sshtools/common/publickey/authorized/Patterns;->matchesWithCIDR(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Expecting false: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object v5, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "foo.com"

    invoke-static {v0, v1}, Lcom/sshtools/common/publickey/authorized/Patterns;->matchesWithCIDR(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static matches(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 76
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    const-string v5, "!"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v1, :cond_2

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sshtools/common/publickey/authorized/Patterns;->convertToRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_2
    if-nez v2, :cond_1

    .line 89
    invoke-static {v3}, Lcom/sshtools/common/publickey/authorized/Patterns;->convertToRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    return v4

    :cond_4
    :goto_1
    return v0
.end method

.method public static matchesWithCIDR(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 40
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    const-string v5, "!"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "/"

    if-eqz v5, :cond_3

    if-nez v1, :cond_3

    .line 49
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51
    new-instance v1, Lcom/sshtools/common/net/CIDRNetwork;

    invoke-direct {v1, v3}, Lcom/sshtools/common/net/CIDRNetwork;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, p1}, Lcom/sshtools/common/net/CIDRNetwork;->isValidAddressForNetwork(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sshtools/common/publickey/authorized/Patterns;->convertToRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_3
    if-nez v2, :cond_1

    .line 59
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 61
    new-instance v2, Lcom/sshtools/common/net/CIDRNetwork;

    invoke-direct {v2, v3}, Lcom/sshtools/common/net/CIDRNetwork;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, p1}, Lcom/sshtools/common/net/CIDRNetwork;->isValidAddressForNetwork(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 65
    :cond_4
    invoke-static {v3}, Lcom/sshtools/common/publickey/authorized/Patterns;->convertToRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    return v4

    :cond_6
    :goto_1
    return v0
.end method

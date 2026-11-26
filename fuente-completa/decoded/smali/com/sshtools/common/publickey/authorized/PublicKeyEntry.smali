.class public Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;
.super Lcom/sshtools/common/util/Entry;
.source "PublicKeyEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/common/util/Entry<",
        "Lcom/sshtools/common/ssh/components/SshPublicKey;",
        ">;"
    }
.end annotation


# instance fields
.field comment:Ljava/lang/String;

.field orderedOptions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/sshtools/common/util/Entry;-><init>(Ljava/lang/Object;)V

    .line 39
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->orderedOptions:Ljava/util/LinkedList;

    .line 44
    iput-object p3, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->comment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addConnectFrom(Ljava/lang/String;)V
    .locals 1

    .line 204
    const-class v0, Lcom/sshtools/common/publickey/authorized/FromOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/sshtools/common/publickey/authorized/FromOption;

    invoke-direct {v0, p1}, Lcom/sshtools/common/publickey/authorized/FromOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->setOption(Lcom/sshtools/common/publickey/authorized/Option;)V

    return-void

    .line 207
    :cond_0
    const-class v0, Lcom/sshtools/common/publickey/authorized/FromOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getOption(Ljava/lang/Class;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/publickey/authorized/FromOption;

    .line 208
    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/FromOption;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->setOption(Lcom/sshtools/common/publickey/authorized/Option;)V

    return-void
.end method

.method public addForwardTo(Ljava/lang/String;)V
    .locals 1

    .line 231
    const-class v0, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;

    invoke-direct {v0, p1}, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->setOption(Lcom/sshtools/common/publickey/authorized/Option;)V

    return-void

    .line 234
    :cond_0
    const-class v0, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getOption(Ljava/lang/Class;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;

    .line 235
    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPrincipal(Ljava/lang/String;)V
    .locals 1

    .line 286
    const-class v0, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;

    invoke-direct {v0, p1}, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->setOption(Lcom/sshtools/common/publickey/authorized/Option;)V

    return-void

    .line 289
    :cond_0
    const-class v0, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getOption(Ljava/lang/Class;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;

    .line 290
    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canConnectFrom(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const-class v0, Lcom/sshtools/common/publickey/authorized/FromOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-class v0, Lcom/sshtools/common/publickey/authorized/FromOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getOption(Ljava/lang/Class;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/sshtools/common/publickey/authorized/Patterns;->matchesWithCIDR(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public canForwardTo(Ljava/lang/String;I)Z
    .locals 6

    .line 248
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsPortForwarding()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 251
    :cond_0
    const-class v0, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 252
    const-class v0, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getOption(Ljava/lang/Class;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x3a

    .line 253
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 257
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 264
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p2, v3, :cond_1

    return v2

    .line 255
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid permitopen rule "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 192
    const-class v0, Lcom/sshtools/common/publickey/authorized/CommandOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-class v0, Lcom/sshtools/common/publickey/authorized/CommandOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getOption(Ljava/lang/Class;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method getEnvironmentOptions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->orderedOptions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/publickey/authorized/Option;

    .line 109
    instance-of v3, v2, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;

    if-eqz v3, :cond_0

    .line 110
    check-cast v2, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;

    .line 111
    invoke-virtual {v2}, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;->getEnvironmentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;->getEnvironmentValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedEntry()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->orderedOptions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/publickey/authorized/Option;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 124
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_0
    invoke-virtual {v2}, Lcom/sshtools/common/publickey/authorized/Option;->getFormattedOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 129
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sshtools/common/ssh/components/SshPublicKey;

    iget-object v3, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->comment:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object v2

    invoke-interface {v2}, Lcom/sshtools/common/publickey/SshPublicKeyFile;->getFormattedKey()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOption(Ljava/lang/Class;)Lcom/sshtools/common/publickey/authorized/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;>;)",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->orderedOptions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/publickey/authorized/Option;

    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getOption(Ljava/lang/String;)Lcom/sshtools/common/publickey/authorized/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->orderedOptions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/publickey/authorized/Option;

    .line 79
    invoke-virtual {v1}, Lcom/sshtools/common/publickey/authorized/Option;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrincipals()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    const-class v0, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 280
    :cond_0
    const-class v0, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;

    .line 281
    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getOption(Ljava/lang/Class;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 280
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method hasOption(Lcom/sshtools/common/publickey/authorized/Option;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;)Z"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->orderedOptions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/publickey/authorized/Option;

    .line 70
    invoke-virtual {v1}, Lcom/sshtools/common/publickey/authorized/Option;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sshtools/common/publickey/authorized/Option;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method hasOption(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;>;)Z"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->orderedOptions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/publickey/authorized/Option;

    .line 175
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isCertAuthority()Z
    .locals 1

    .line 166
    sget-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->CERT_AUTHORITY:Lcom/sshtools/common/publickey/authorized/Option;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Lcom/sshtools/common/publickey/authorized/Option;)Z

    move-result v0

    return v0
.end method

.method public removeConnectFrom(Ljava/lang/String;)V
    .locals 1

    .line 213
    const-class v0, Lcom/sshtools/common/publickey/authorized/FromOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-class v0, Lcom/sshtools/common/publickey/authorized/FromOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getOption(Ljava/lang/Class;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/publickey/authorized/FromOption;

    .line 215
    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/FromOption;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeEnvironmentVariable(Ljava/lang/String;)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->orderedOptions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/publickey/authorized/Option;

    .line 93
    instance-of v3, v2, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;

    if-eqz v3, :cond_0

    .line 94
    move-object v1, v2

    check-cast v1, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;

    .line 95
    invoke-virtual {v1}, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;->getEnvironmentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->orderedOptions:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public removeForwardTo(Ljava/lang/String;)V
    .locals 1

    .line 240
    const-class v0, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-class v0, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getOption(Ljava/lang/Class;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;

    .line 242
    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/PermitOpenOption;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeOption(Lcom/sshtools/common/publickey/authorized/Option;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;)V"
        }
    .end annotation

    .line 58
    instance-of v0, p1, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/sshtools/common/publickey/authorized/Option;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getOption(Ljava/lang/String;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->orderedOptions:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect use. Use removeEnvironmentVariable method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removePrincipal(Ljava/lang/String;)V
    .locals 1

    .line 295
    const-class v0, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-class v0, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getOption(Ljava/lang/Class;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;

    .line 297
    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/PrincipalsOption;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requiresCommandExecution()Z
    .locals 1

    .line 170
    const-class v0, Lcom/sshtools/common/publickey/authorized/CommandOption;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 1

    .line 199
    new-instance v0, Lcom/sshtools/common/publickey/authorized/CommandOption;

    invoke-direct {v0, p1}, Lcom/sshtools/common/publickey/authorized/CommandOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->setOption(Lcom/sshtools/common/publickey/authorized/Option;)V

    return-void
.end method

.method setOption(Lcom/sshtools/common/publickey/authorized/Option;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;)V"
        }
    .end annotation

    .line 48
    instance-of v0, p1, Lcom/sshtools/common/publickey/authorized/EnvironmentOption;

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/sshtools/common/publickey/authorized/Option;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getOption(Ljava/lang/String;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->orderedOptions:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->orderedOptions:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public supportsAgentForwarding()Z
    .locals 1

    .line 154
    sget-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->AGENT_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsRestrictedOption(Lcom/sshtools/common/publickey/authorized/Option;)Z

    move-result v0

    return v0
.end method

.method public supportsPortForwarding()Z
    .locals 1

    .line 150
    sget-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->PORT_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsRestrictedOption(Lcom/sshtools/common/publickey/authorized/Option;)Z

    move-result v0

    return v0
.end method

.method public supportsPty()Z
    .locals 1

    .line 146
    sget-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->PTY:Lcom/sshtools/common/publickey/authorized/Option;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsRestrictedOption(Lcom/sshtools/common/publickey/authorized/Option;)Z

    move-result v0

    return v0
.end method

.method protected supportsRestrictedOption(Lcom/sshtools/common/publickey/authorized/Option;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;)Z"
        }
    .end annotation

    .line 137
    sget-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->RESRICT:Lcom/sshtools/common/publickey/authorized/Option;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Lcom/sshtools/common/publickey/authorized/Option;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Lcom/sshtools/common/publickey/authorized/Option;)Z

    move-result p1

    return p1

    .line 141
    :cond_0
    invoke-static {p1}, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->getNoOption(Lcom/sshtools/common/publickey/authorized/Option;)Lcom/sshtools/common/publickey/authorized/Option;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->hasOption(Lcom/sshtools/common/publickey/authorized/Option;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public supportsUserRc()Z
    .locals 1

    .line 158
    sget-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->USER_RC:Lcom/sshtools/common/publickey/authorized/Option;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsRestrictedOption(Lcom/sshtools/common/publickey/authorized/Option;)Z

    move-result v0

    return v0
.end method

.method public supportsX11Forwarding()Z
    .locals 1

    .line 162
    sget-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->X11_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->supportsRestrictedOption(Lcom/sshtools/common/publickey/authorized/Option;)Z

    move-result v0

    return v0
.end method

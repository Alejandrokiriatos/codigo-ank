.class public Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;
.super Ljava/lang/Object;
.source "DefaultAuthenticationMechanismFactory.java"

# interfaces
.implements Lcom/sshtools/common/auth/AuthenticationMechanismFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/sshtools/common/ssh/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/auth/AuthenticationMechanismFactory<",
        "TC;>;"
    }
.end annotation


# instance fields
.field protected keyboardInteractiveProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected passwordProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/auth/PasswordAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected publickeyProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected required:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected supportedMechanisms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->required:Ljava/util/Set;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->supportedMechanisms:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->passwordProviders:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->publickeyProviders:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->keyboardInteractiveProviders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addKeyboardInteractiveProvider(Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->keyboardInteractiveProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->supportedMechanisms:Ljava/util/Set;

    const-string v0, "keyboard-interactive"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPasswordAuthenticationProvider(Lcom/sshtools/common/auth/PasswordAuthenticationProvider;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->passwordProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->supportedMechanisms:Ljava/util/Set;

    const-string v0, "password"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->supportedMechanisms:Ljava/util/Set;

    const-string v0, "keyboard-interactive"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addProvider(Lcom/sshtools/common/auth/Authenticator;)V
    .locals 2

    .line 99
    instance-of v0, p1, Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->addPasswordAuthenticationProvider(Lcom/sshtools/common/auth/PasswordAuthenticationProvider;)V

    return-void

    .line 101
    :cond_0
    instance-of v0, p1, Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;

    if-eqz v0, :cond_1

    .line 102
    check-cast p1, Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->addPublicKeyAuthenticationProvider(Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;)V

    return-void

    .line 103
    :cond_1
    instance-of v0, p1, Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;

    if-eqz v0, :cond_2

    .line 104
    check-cast p1, Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->addKeyboardInteractiveProvider(Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;)V

    return-void

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a supported AuthenticationProvider"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addProviders(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/auth/Authenticator;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/auth/Authenticator;

    .line 167
    invoke-virtual {p0, v0}, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->addProvider(Lcom/sshtools/common/auth/Authenticator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addPublicKeyAuthenticationProvider(Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->publickeyProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->supportedMechanisms:Ljava/util/Set;

    const-string v0, "publickey"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRequiredAuthentication(Ljava/lang/String;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->supportedMechanisms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->required:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s is not a supported authentication mechanism"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createInstance(Ljava/lang/String;Lcom/sshtools/common/sshd/AbstractServerTransport;Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/auth/AuthenticationMechanism;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sshd/AbstractServerTransport<",
            "TC;>;",
            "Lcom/sshtools/common/auth/AbstractAuthenticationProtocol<",
            "TC;>;",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ")",
            "Lcom/sshtools/common/auth/AuthenticationMechanism;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/UnsupportedChannelException;
        }
    .end annotation

    .line 114
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance p1, Lcom/sshtools/common/auth/PasswordAuthentication;

    invoke-virtual {p0, p4}, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->getPasswordAuthenticationProviders(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    move-result-object v0

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/sshtools/common/auth/PasswordAuthentication;-><init>(Lcom/sshtools/common/sshd/AbstractServerTransport;Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;Lcom/sshtools/common/ssh/SshConnection;[Lcom/sshtools/common/auth/PasswordAuthenticationProvider;)V

    return-object p1

    .line 116
    :cond_0
    const-string v0, "publickey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    new-instance p1, Lcom/sshtools/common/auth/PublicKeyAuthentication;

    invoke-virtual {p0, p4}, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->getPublicKeyAuthenticationProviders(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;

    move-result-object v0

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/sshtools/common/auth/PublicKeyAuthentication;-><init>(Lcom/sshtools/common/sshd/AbstractServerTransport;Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;Lcom/sshtools/common/ssh/SshConnection;[Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;)V

    return-object p1

    .line 118
    :cond_1
    const-string v0, "keyboard-interactive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    new-instance p1, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    invoke-virtual {p0, p4}, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->getKeyboardInteractiveProviders(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;

    move-result-object v0

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;-><init>(Lcom/sshtools/common/sshd/AbstractServerTransport;Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;Lcom/sshtools/common/ssh/SshConnection;[Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;)V

    return-object p1

    .line 122
    :cond_2
    new-instance p1, Lcom/sshtools/common/ssh/UnsupportedChannelException;

    invoke-direct {p1}, Lcom/sshtools/common/ssh/UnsupportedChannelException;-><init>()V

    throw p1
.end method

.method public getKeyboardInteractiveProviders(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;
    .locals 2

    .line 126
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->keyboardInteractiveProviders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 127
    new-array p1, p1, [Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;

    new-instance v1, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory$1;

    invoke-direct {v1, p0}, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory$1;-><init>(Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;)V

    aput-object v1, p1, v0

    return-object p1

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->keyboardInteractiveProviders:Ljava/util/List;

    new-array v0, v0, [Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;

    return-object p1
.end method

.method public getPasswordAuthenticationProviders(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/PasswordAuthenticationProvider;
    .locals 1

    .line 150
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->passwordProviders:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    return-object p1
.end method

.method public getProviders(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/Authenticator;
    .locals 1

    .line 154
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, p2}, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->getPasswordAuthenticationProviders(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    move-result-object p1

    return-object p1

    .line 156
    :cond_0
    const-string v0, "publickey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0, p2}, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->getPublicKeyAuthenticationProviders(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;

    move-result-object p1

    return-object p1

    .line 158
    :cond_1
    const-string v0, "keyboard-interactive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p0, p2}, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->getKeyboardInteractiveProviders(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;

    move-result-object p1

    return-object p1

    .line 161
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown provider type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPublicKeyAuthenticationProviders(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->publickeyProviders:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;

    return-object p1
.end method

.method public getRequiredMechanisms(Lcom/sshtools/common/ssh/SshConnection;)[Ljava/lang/String;
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->required:Ljava/util/Set;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getSupportedMechanisms()[Ljava/lang/String;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->supportedMechanisms:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public isSupportedMechanism(Ljava/lang/String;)Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->supportedMechanisms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeKeyboardInteractiveProvider(Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->keyboardInteractiveProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePasswordAuthenticationProvider(Lcom/sshtools/common/auth/PasswordAuthenticationProvider;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->passwordProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->passwordProviders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->supportedMechanisms:Ljava/util/Set;

    const-string v0, "password"

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removePublicKeyAuthenticationProvider(Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->publickeyProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->publickeyProviders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->supportedMechanisms:Ljava/util/Set;

    const-string v0, "publickey"

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeRequiredAuthentication(Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->supportedMechanisms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sshtools/common/auth/DefaultAuthenticationMechanismFactory;->required:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s is not a supported authentication mechanism"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

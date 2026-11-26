.class public Lcom/sshtools/common/auth/OpenSshCertificateAuthenticationProvider;
.super Ljava/lang/Object;
.source "OpenSshCertificateAuthenticationProvider.java"

# interfaces
.implements Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;


# instance fields
.field caKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/auth/OpenSshCertificateAuthenticationProvider;->caKeys:Ljava/util/Set;

    .line 49
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs constructor <init>([Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/auth/OpenSshCertificateAuthenticationProvider;->caKeys:Ljava/util/Set;

    .line 45
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
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

    .line 109
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addCAKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/sshtools/common/auth/OpenSshCertificateAuthenticationProvider;->caKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/auth/OpenSshCertificateAuthenticationProvider;->isAuthorizedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z

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

    .line 98
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isAuthorizedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->isCertificate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    check-cast p1, Lcom/sshtools/common/publickey/OpenSshCertificate;

    .line 69
    invoke-virtual {p1}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return v1

    .line 73
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getValidAfter()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 77
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getValidBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 81
    :cond_3
    invoke-virtual {p1}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getPrincipals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 82
    invoke-virtual {p1}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getPrincipals()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    return v1

    .line 87
    :cond_4
    iget-object p2, p0, Lcom/sshtools/common/auth/OpenSshCertificateAuthenticationProvider;->caKeys:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 88
    invoke-virtual {p1}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getSignedBy()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_6
    return v1
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

    .line 103
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sshtools/common/auth/OpenSshCertificateAuthenticationProvider;->caKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

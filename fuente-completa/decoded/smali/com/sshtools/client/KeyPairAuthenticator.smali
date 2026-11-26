.class public Lcom/sshtools/client/KeyPairAuthenticator;
.super Lcom/sshtools/client/PublicKeyAuthenticator;
.source "KeyPairAuthenticator.java"


# instance fields
.field authenticatingPair:Lcom/sshtools/common/ssh/components/SshKeyPair;

.field pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/ssh/components/SshKeyPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/components/SshKeyPair;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sshtools/common/ssh/components/SshKeyPair;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sshtools/client/KeyPairAuthenticator;->pairs:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lcom/sshtools/common/ssh/components/SshKeyPair;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sshtools/client/KeyPairAuthenticator;->pairs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getAuthenticatingKey()Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sshtools/client/KeyPairAuthenticator;->authenticatingPair:Lcom/sshtools/common/ssh/components/SshKeyPair;

    return-object v0
.end method

.method protected getNextKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/sshtools/client/KeyPairAuthenticator;->authenticatingPair:Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    return-object v0
.end method

.method protected hasCredentialsRemaining()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/sshtools/client/KeyPairAuthenticator;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sshtools/client/KeyPairAuthenticator;->pairs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/SshKeyPair;

    iput-object v0, p0, Lcom/sshtools/client/KeyPairAuthenticator;->authenticatingPair:Lcom/sshtools/common/ssh/components/SshKeyPair;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

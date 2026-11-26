.class public Lcom/sshtools/common/knownhosts/HostKeyVerificationManager;
.super Ljava/lang/Object;
.source "HostKeyVerificationManager.java"

# interfaces
.implements Lcom/sshtools/common/knownhosts/HostKeyVerification;


# instance fields
.field verifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/knownhosts/HostKeyVerification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sshtools/common/knownhosts/HostKeyVerification;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/HostKeyVerificationManager;->verifiers:Ljava/util/List;

    .line 42
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/sshtools/common/knownhosts/HostKeyVerification;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/HostKeyVerificationManager;->verifiers:Ljava/util/List;

    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs constructor <init>([Lcom/sshtools/common/knownhosts/HostKeyVerification;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/knownhosts/HostKeyVerificationManager;->verifiers:Ljava/util/List;

    .line 46
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public addVerifier(Lcom/sshtools/common/knownhosts/HostKeyVerification;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/HostKeyVerificationManager;->verifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public verifyHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/HostKeyVerificationManager;->verifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/knownhosts/HostKeyVerification;

    .line 56
    invoke-interface {v1, p1, p2}, Lcom/sshtools/common/knownhosts/HostKeyVerification;->verifyHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return v2
.end method

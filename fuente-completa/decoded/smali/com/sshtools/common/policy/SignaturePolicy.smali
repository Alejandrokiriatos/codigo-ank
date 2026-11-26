.class public Lcom/sshtools/common/policy/SignaturePolicy;
.super Ljava/lang/Object;
.source "SignaturePolicy.java"


# instance fields
.field strictMode:Z

.field supportedSignatures:Ljava/util/Set;
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/policy/SignaturePolicy;->supportedSignatures:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/policy/SignaturePolicy;->supportedSignatures:Ljava/util/Set;

    .line 39
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/sshtools/common/policy/SignaturePolicy;->strictMode:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/policy/SignaturePolicy;->supportedSignatures:Ljava/util/Set;

    .line 44
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 45
    iput-boolean p2, p0, Lcom/sshtools/common/policy/SignaturePolicy;->strictMode:Z

    return-void
.end method


# virtual methods
.method public getSupportedSignatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/sshtools/common/policy/SignaturePolicy;->supportedSignatures:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isStrictMode()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/sshtools/common/policy/SignaturePolicy;->strictMode:Z

    return v0
.end method

.method public setStrictMode(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/sshtools/common/policy/SignaturePolicy;->strictMode:Z

    return-void
.end method

.method public setSupportedSignatures(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sshtools/common/policy/SignaturePolicy;->supportedSignatures:Ljava/util/Set;

    return-void
.end method

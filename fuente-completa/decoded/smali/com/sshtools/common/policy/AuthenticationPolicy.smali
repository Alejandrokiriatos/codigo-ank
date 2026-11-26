.class public Lcom/sshtools/common/policy/AuthenticationPolicy;
.super Lcom/sshtools/common/permissions/Permissions;
.source "AuthenticationPolicy.java"


# instance fields
.field bannerMessage:Ljava/lang/String;

.field protected maxAuthentications:I

.field maximumPublicKeyVerificationAttempts:I

.field publicKeyVerificationIsFailedAuth:Z

.field required:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requiredAuthenticationStrategy:Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/sshtools/common/permissions/Permissions;-><init>()V

    const/16 v0, 0xa

    .line 35
    iput v0, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->maximumPublicKeyVerificationAttempts:I

    .line 36
    const-string v1, ""

    iput-object v1, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->bannerMessage:Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->publicKeyVerificationIsFailedAuth:Z

    .line 38
    sget-object v1, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;->ONCE_PER_CONNECTION:Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    iput-object v1, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->requiredAuthenticationStrategy:Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->required:Ljava/util/List;

    .line 40
    iput v0, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->maxAuthentications:I

    return-void
.end method


# virtual methods
.method public addRequiredMechanism(Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->required:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBannerMessage()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->bannerMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAuthentications()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->maxAuthentications:I

    return v0
.end method

.method public getMaximumPublicKeyVerificationAttempts()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->maximumPublicKeyVerificationAttempts:I

    return v0
.end method

.method public getRequiredAuthenticationStrategy()Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->requiredAuthenticationStrategy:Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    return-object v0
.end method

.method public getRequiredMechanisms()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->required:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isPublicKeyVerificationFailedAuth()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->publicKeyVerificationIsFailedAuth:Z

    return v0
.end method

.method public setBannerMessage(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->bannerMessage:Ljava/lang/String;

    return-void
.end method

.method public setMaxAuthentications(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->maxAuthentications:I

    return-void
.end method

.method public setMaximumPublicKeyVerificationAttempts(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->maximumPublicKeyVerificationAttempts:I

    return-void
.end method

.method public setPublicKeyVerificationIsFailedAuth(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->publicKeyVerificationIsFailedAuth:Z

    return-void
.end method

.method public setRequiredAuthenticationStrategy(Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/sshtools/common/policy/AuthenticationPolicy;->requiredAuthenticationStrategy:Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    return-void
.end method

.class public Lcom/sshtools/common/ssh/DefaultSecurityPolicy;
.super Ljava/lang/Object;
.source "DefaultSecurityPolicy.java"

# interfaces
.implements Lcom/sshtools/common/ssh/SecurityPolicy;


# instance fields
.field managedSecurity:Z

.field minimumSecurity:Lcom/sshtools/common/ssh/SecurityLevel;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/SecurityLevel;Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sshtools/common/ssh/DefaultSecurityPolicy;->minimumSecurity:Lcom/sshtools/common/ssh/SecurityLevel;

    .line 35
    iput-boolean p2, p0, Lcom/sshtools/common/ssh/DefaultSecurityPolicy;->managedSecurity:Z

    return-void
.end method


# virtual methods
.method public getMinimumSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sshtools/common/ssh/DefaultSecurityPolicy;->minimumSecurity:Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method

.method public isDropSecurityAsLastResort()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isManagedSecurity()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/sshtools/common/ssh/DefaultSecurityPolicy;->managedSecurity:Z

    return v0
.end method

.method public varargs onIncompatibleSecurity(Ljava/lang/String;ILjava/lang/String;[Lcom/sshtools/common/ssh/IncompatibleAlgorithm;)V
    .locals 1

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Connection to {}:{} could not be established due to incompatible security protocols"

    invoke-static {p2, p1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const-string p1, "The remote host identified itself as {}"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 58
    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "The following algorithms could not be negotiated:"

    invoke-static {p3, p2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    array-length p2, p4

    :goto_0
    if-ge p1, p2, :cond_0

    aget-object p3, p4, p1

    .line 60
    invoke-virtual {p3}, Lcom/sshtools/common/ssh/IncompatibleAlgorithm;->getType()Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sshtools/common/ssh/IncompatibleAlgorithm;->getRemoteAlgorithms()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sshtools/common/util/Utils;->csv([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "{} could not be negotiated from remote algorithms {}"

    invoke-static {v0, p3}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

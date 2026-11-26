.class public interface abstract Lcom/sshtools/common/ssh/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# virtual methods
.method public abstract getMinimumSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
.end method

.method public abstract isDropSecurityAsLastResort()Z
.end method

.method public abstract isManagedSecurity()Z
.end method

.method public varargs abstract onIncompatibleSecurity(Ljava/lang/String;ILjava/lang/String;[Lcom/sshtools/common/ssh/IncompatibleAlgorithm;)V
.end method

.class public interface abstract Lcom/sshtools/common/ssh/SecureComponent;
.super Ljava/lang/Object;
.source "SecureComponent.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/Component;


# virtual methods
.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getPriority()I
.end method

.method public abstract getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
.end method

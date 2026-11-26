.class public interface abstract Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;
.super Ljava/lang/Object;
.source "SshSecureRandomGenerator.java"


# virtual methods
.method public abstract nextBytes([B)V
.end method

.method public abstract nextBytes([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract nextInt()I
.end method

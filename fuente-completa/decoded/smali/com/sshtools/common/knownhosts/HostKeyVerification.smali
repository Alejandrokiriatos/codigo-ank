.class public interface abstract Lcom/sshtools/common/knownhosts/HostKeyVerification;
.super Ljava/lang/Object;
.source "HostKeyVerification.java"


# virtual methods
.method public abstract verifyHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.class public interface abstract Lcom/sshtools/common/knownhosts/HostKeyUpdater;
.super Ljava/lang/Object;
.source "HostKeyUpdater.java"


# virtual methods
.method public abstract isKnownHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract updateHostKey(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

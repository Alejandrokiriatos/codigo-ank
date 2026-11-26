.class public interface abstract Lcom/sshtools/common/ssh/SshConnectionManager;
.super Ljava/lang/Object;
.source "SshConnectionManager.java"


# virtual methods
.method public abstract clearConnection()V
.end method

.method public abstract getAllConnections()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionById(Ljava/lang/String;)Lcom/sshtools/common/ssh/SshConnection;
.end method

.method public abstract setupConnection(Lcom/sshtools/common/ssh/SshConnection;)V
.end method

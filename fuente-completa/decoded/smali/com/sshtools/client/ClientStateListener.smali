.class public interface abstract Lcom/sshtools/client/ClientStateListener;
.super Ljava/lang/Object;
.source "ClientStateListener.java"

# interfaces
.implements Lcom/sshtools/synergy/ssh/ConnectionStateListener;


# virtual methods
.method public authenticate(Lcom/sshtools/client/AuthenticationProtocolClient;Lcom/sshtools/common/ssh/SshConnection;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/AuthenticationProtocolClient;",
            "Lcom/sshtools/common/ssh/SshConnection;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public authenticationStarted(Lcom/sshtools/client/AuthenticationProtocolClient;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0

    return-void
.end method

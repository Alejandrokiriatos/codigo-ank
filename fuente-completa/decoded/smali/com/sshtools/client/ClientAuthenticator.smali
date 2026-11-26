.class public interface abstract Lcom/sshtools/client/ClientAuthenticator;
.super Ljava/lang/Object;
.source "ClientAuthenticator.java"

# interfaces
.implements Lcom/sshtools/common/ssh/RequestFuture;


# virtual methods
.method public abstract authenticate(Lcom/sshtools/client/TransportProtocolClient;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract cancel()V
.end method

.method public abstract failure()V
.end method

.method public abstract getAuthenticationMethods()[Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isMoreAuthenticationRequired()Z
.end method

.method public abstract processMessage(Lcom/sshtools/common/util/ByteArrayReader;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract success()V
.end method

.method public abstract success(Z[Ljava/lang/String;)V
.end method

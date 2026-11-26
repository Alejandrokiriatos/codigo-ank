.class public Lcom/sshtools/client/NoneAuthenticator;
.super Lcom/sshtools/client/SimpleClientAuthenticator;
.source "NoneAuthenticator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/sshtools/client/SimpleClientAuthenticator;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/sshtools/client/TransportProtocolClient;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/sshtools/client/AuthenticationMessage;

    const-string v1, "ssh-connection"

    const-string v2, "none"

    invoke-direct {v0, p2, v1, v2}, Lcom/sshtools/client/AuthenticationMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sshtools/client/TransportProtocolClient;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "none"

    return-object v0
.end method

.class public Lcom/sshtools/client/KeyboardInteractiveAuthenticator;
.super Lcom/sshtools/client/SimpleClientAuthenticator;
.source "KeyboardInteractiveAuthenticator.java"

# interfaces
.implements Lcom/sshtools/client/ClientAuthenticator;


# static fields
.field static final SSH_MSG_USERAUTH_INFO_REQUEST:I = 0x3c

.field static final SSH_MSG_USERAUTH_INFO_RESPONSE:I = 0x3d


# instance fields
.field callback:Lcom/sshtools/client/KeyboardInteractiveCallback;

.field completeFutureOnFailure:Z

.field transport:Lcom/sshtools/client/TransportProtocolClient;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sshtools/client/KeyboardInteractiveCallback;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/sshtools/client/SimpleClientAuthenticator;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->completeFutureOnFailure:Z

    .line 50
    iput-object p1, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->callback:Lcom/sshtools/client/KeyboardInteractiveCallback;

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/sshtools/client/TransportProtocolClient;Ljava/lang/String;)V
    .locals 3

    .line 56
    iput-object p1, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->transport:Lcom/sshtools/client/TransportProtocolClient;

    .line 57
    iput-object p2, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->username:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->callback:Lcom/sshtools/client/KeyboardInteractiveCallback;

    invoke-virtual {p1}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sshtools/client/KeyboardInteractiveCallback;->init(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 61
    new-instance v0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$1;

    const-string v1, "ssh-connection"

    const-string v2, "keyboard-interactive"

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$1;-><init>(Lcom/sshtools/client/KeyboardInteractiveAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sshtools/client/TransportProtocolClient;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 157
    const-string v0, "keyboard-interactive"

    return-object v0
.end method

.method public processMessage(Lcom/sshtools/common/util/ByteArrayReader;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v0

    const/16 v1, 0x3c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 81
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "SSH_MSG_USERAUTH_INFO_REQUEST received"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v3

    long-to-int v3, v3

    .line 93
    new-array v4, v3, [Lcom/sshtools/client/KeyboardInteractivePrompt;

    move v5, v2

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_3

    .line 95
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v7

    .line 96
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v8

    if-ne v8, v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v2

    .line 97
    :goto_1
    new-instance v8, Lcom/sshtools/client/KeyboardInteractivePrompt;

    invoke-direct {v8, v7, v6}, Lcom/sshtools/client/KeyboardInteractivePrompt;-><init>(Ljava/lang/String;Z)V

    aput-object v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->transport:Lcom/sshtools/client/TransportProtocolClient;

    sget-object v2, Lcom/sshtools/synergy/ssh/TransportProtocol;->CALLBACKS:Ljava/lang/Integer;

    new-instance v3, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;

    iget-object v5, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v5}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v5

    new-instance v7, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;

    invoke-direct {v7, p0, v0, v1, v4}, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;-><init>(Lcom/sshtools/client/KeyboardInteractiveAuthenticator;Ljava/lang/String;Ljava/lang/String;[Lcom/sshtools/client/KeyboardInteractivePrompt;)V

    invoke-direct {v3, v5, v7}, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v2, v3}, Lcom/sshtools/client/TransportProtocolClient;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return v6
.end method

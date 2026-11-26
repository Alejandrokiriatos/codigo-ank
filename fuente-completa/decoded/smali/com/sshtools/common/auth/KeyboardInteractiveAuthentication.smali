.class public Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;
.super Ljava/lang/Object;
.source "KeyboardInteractiveAuthentication.java"

# interfaces
.implements Lcom/sshtools/common/auth/AuthenticationMechanism;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;,
        Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;,
        Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$InfoRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/sshtools/common/ssh/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/auth/AuthenticationMechanism;"
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_METHOD:Ljava/lang/String; = "keyboard-interactive"

.field public static final SSH_MSG_USERAUTH_INFO_REQUEST:I = 0x3c

.field public static final SSH_MSG_USERAUTH_INFO_RESPONSE:I = 0x3d


# instance fields
.field authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/auth/AbstractAuthenticationProtocol<",
            "TC;>;"
        }
    .end annotation
.end field

.field con:Lcom/sshtools/common/ssh/SshConnection;

.field providers:[Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;

.field selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

.field service:Ljava/lang/String;

.field transport:Lcom/sshtools/common/sshd/AbstractServerTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/sshd/AbstractServerTransport<",
            "TC;>;"
        }
    .end annotation
.end field

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/sshd/AbstractServerTransport;Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;Lcom/sshtools/common/ssh/SshConnection;[Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/sshd/AbstractServerTransport<",
            "TC;>;",
            "Lcom/sshtools/common/auth/AbstractAuthenticationProtocol<",
            "TC;>;",
            "Lcom/sshtools/common/ssh/SshConnection;",
            "[",
            "Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    .line 60
    iput-object p2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    .line 61
    iput-object p3, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 62
    iput-object p4, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->providers:[Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "keyboard-interactive"

    return-object v0
.end method

.method public getSelectedProvider()Lcom/sshtools/common/auth/KeyboardInteractiveProvider;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    return-object v0
.end method

.method public processMessage([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    aget-byte v1, p1, v0

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_0

    return v0

    .line 79
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const-string v1, "Received SSH_MSG_USERAUTH_INFO_RESPONSE"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->con:Lcom/sshtools/common/ssh/SshConnection;

    sget-object v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->EVENTS:Ljava/lang/Integer;

    new-instance v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;

    iget-object v3, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-direct {v2, p0, v3, p1}, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;-><init>(Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;Lcom/sshtools/common/ssh/SshConnection;[B)V

    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/ssh/SshConnection;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    const/4 p1, 0x1

    return p1
.end method

.method sendInfoRequest([Lcom/sshtools/common/ssh2/KBIPrompt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    const/16 v1, 0x3c

    .line 106
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 107
    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 109
    const-string p2, ""

    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 110
    array-length p2, p1

    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    const/4 p2, 0x0

    .line 111
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_0

    .line 112
    aget-object p3, p1, p2

    invoke-virtual {p3}, Lcom/sshtools/common/ssh2/KBIPrompt;->getPrompt()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 113
    aget-object p3, p1, p2

    invoke-virtual {p3}, Lcom/sshtools/common/ssh2/KBIPrompt;->echo()Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBoolean(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    new-instance p2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$InfoRequest;

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$InfoRequest;-><init>(Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;[B)V

    invoke-interface {p1, p2}, Lcom/sshtools/common/sshd/AbstractServerTransport;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 119
    throw p1
.end method

.method public startRequest(Ljava/lang/String;[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->con:Lcom/sshtools/common/ssh/SshConnection;

    sget-object v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->EVENTS:Ljava/lang/Integer;

    new-instance v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;

    iget-object v3, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;-><init>(Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;[B)V

    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/ssh/SshConnection;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    const/4 p1, 0x0

    return p1
.end method

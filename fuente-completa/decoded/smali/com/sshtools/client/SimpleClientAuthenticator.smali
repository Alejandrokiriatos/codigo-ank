.class public abstract Lcom/sshtools/client/SimpleClientAuthenticator;
.super Lcom/sshtools/common/ssh/AbstractRequestFuture;
.source "SimpleClientAuthenticator.java"

# interfaces
.implements Lcom/sshtools/client/ClientAuthenticator;


# instance fields
.field authenticationMethods:[Ljava/lang/String;

.field cancelled:Z

.field moreAuthenticationsRequired:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/sshtools/common/ssh/AbstractRequestFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/sshtools/client/SimpleClientAuthenticator;->cancelled:Z

    .line 96
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/sshtools/client/SimpleClientAuthenticator;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{} authentication cancelled"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Lcom/sshtools/client/SimpleClientAuthenticator;->done(Z)V

    return-void
.end method

.method public failure()V
    .locals 2

    .line 82
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/sshtools/client/SimpleClientAuthenticator;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{} authentication failed"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/sshtools/client/SimpleClientAuthenticator;->done(Z)V

    return-void
.end method

.method public getAuthenticationMethods()[Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sshtools/client/SimpleClientAuthenticator;->authenticationMethods:[Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/sshtools/client/SimpleClientAuthenticator;->cancelled:Z

    return v0
.end method

.method public isMoreAuthenticationRequired()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/sshtools/client/SimpleClientAuthenticator;->moreAuthenticationsRequired:Z

    return v0
.end method

.method public processMessage(Lcom/sshtools/common/util/ByteArrayReader;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public success()V
    .locals 2

    .line 59
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/sshtools/client/SimpleClientAuthenticator;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{} authentication succeeded"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/sshtools/client/SimpleClientAuthenticator;->moreAuthenticationsRequired:Z

    .line 64
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sshtools/client/SimpleClientAuthenticator;->authenticationMethods:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lcom/sshtools/client/SimpleClientAuthenticator;->done(Z)V

    return-void
.end method

.method public success(Z[Ljava/lang/String;)V
    .locals 2

    .line 71
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/sshtools/client/SimpleClientAuthenticator;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{} authentication succeeded partial={}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_0
    iput-boolean p1, p0, Lcom/sshtools/client/SimpleClientAuthenticator;->moreAuthenticationsRequired:Z

    .line 76
    iput-object p2, p0, Lcom/sshtools/client/SimpleClientAuthenticator;->authenticationMethods:[Ljava/lang/String;

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Lcom/sshtools/client/SimpleClientAuthenticator;->done(Z)V

    return-void
.end method

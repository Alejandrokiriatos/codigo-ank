.class public Lcom/sshtools/common/auth/PasswordAuthentication;
.super Ljava/lang/Object;
.source "PasswordAuthentication.java"

# interfaces
.implements Lcom/sshtools/common/auth/AuthenticationMechanism;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;
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
.field public static final AUTHENTICATION_METHOD:Ljava/lang/String; = "password"

.field static final SSH_MSG_PASSWORD_CHANGE_REQ:I = 0x3c


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

.field providers:[Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

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
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/sshd/AbstractServerTransport;Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;Lcom/sshtools/common/ssh/SshConnection;[Lcom/sshtools/common/auth/PasswordAuthenticationProvider;)V
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
            "Lcom/sshtools/common/auth/PasswordAuthenticationProvider;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sshtools/common/auth/PasswordAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    .line 65
    iput-object p2, p0, Lcom/sshtools/common/auth/PasswordAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    .line 66
    iput-object p3, p0, Lcom/sshtools/common/auth/PasswordAuthentication;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 67
    iput-object p4, p0, Lcom/sshtools/common/auth/PasswordAuthentication;->providers:[Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "password"

    return-object v0
.end method

.method public hasProviders()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sshtools/common/auth/PasswordAuthentication;->providers:[Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public processMessage([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public startRequest(Ljava/lang/String;[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/sshtools/common/auth/PasswordAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    sget-object v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->EVENTS:Ljava/lang/Integer;

    new-instance v2, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;

    iget-object v3, p0, Lcom/sshtools/common/auth/PasswordAuthentication;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;-><init>(Lcom/sshtools/common/auth/PasswordAuthentication;Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;[B)V

    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/sshd/AbstractServerTransport;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    const/4 p1, 0x1

    return p1
.end method

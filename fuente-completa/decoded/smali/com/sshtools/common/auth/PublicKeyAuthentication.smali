.class public Lcom/sshtools/common/auth/PublicKeyAuthentication;
.super Ljava/lang/Object;
.source "PublicKeyAuthentication.java"

# interfaces
.implements Lcom/sshtools/common/auth/AuthenticationMechanism;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;
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
.field public static final AUTHENTICATION_METHOD:Ljava/lang/String; = "publickey"

.field public static final SSH_MSG_USERAUTH_PK_OK:I = 0x3c


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

.field providers:[Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;

.field transport:Lcom/sshtools/common/sshd/AbstractServerTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/sshd/AbstractServerTransport<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mlookupAuthorizedKey(Lcom/sshtools/common/auth/PublicKeyAuthentication;Ljava/lang/String;[BLcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;Z)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sshtools/common/auth/PublicKeyAuthentication;->lookupAuthorizedKey(Ljava/lang/String;[BLcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;Z)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/sshtools/common/sshd/AbstractServerTransport;Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;Lcom/sshtools/common/ssh/SshConnection;[Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;)V
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
            "Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    .line 67
    iput-object p2, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    .line 68
    iput-object p3, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 69
    iput-object p4, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->providers:[Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;

    return-void
.end method

.method private lookupAuthorizedKey(Ljava/lang/String;[BLcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;Z)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 3

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 86
    :try_start_0
    invoke-static {p1, p2}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->decodeSSH2PublicKey(Ljava/lang/String;[B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    .line 89
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getFingerprint()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/sshtools/common/ssh/SshConnection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p1

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->providers:[Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;

    if-eqz p2, :cond_2

    .line 94
    array-length v0, p2

    move v1, p4

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 95
    invoke-interface {v2, p1, p3}, Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;->checkKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getFingerprint()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Lcom/sshtools/common/ssh/SshConnection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p5

    :catch_0
    move-exception p1

    .line 112
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 113
    const-string p2, "Client provided unreadable key for authentication"

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    return-object p5

    :catch_1
    move-exception p1

    .line 106
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 107
    const-string p2, "Failed to lookup authorized key"

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 109
    :cond_4
    iget-object p2, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    const/16 p3, 0xb

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/sshtools/common/sshd/AbstractServerTransport;->disconnect(ILjava/lang/String;)V

    return-object p5
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "publickey"

    return-object v0
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

    .line 78
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    sget-object v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->EVENTS:Ljava/lang/Integer;

    new-instance v2, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;

    iget-object v3, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;-><init>(Lcom/sshtools/common/auth/PublicKeyAuthentication;Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;[B)V

    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/sshd/AbstractServerTransport;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    const/4 p1, 0x1

    return p1
.end method

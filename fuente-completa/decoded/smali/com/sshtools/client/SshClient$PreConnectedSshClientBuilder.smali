.class public final Lcom/sshtools/client/SshClient$PreConnectedSshClientBuilder;
.super Ljava/lang/Object;
.source "SshClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/SshClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreConnectedSshClientBuilder"
.end annotation


# instance fields
.field private closeOnDisconnect:Z

.field private final con:Lcom/sshtools/common/ssh/SshConnection;


# direct methods
.method private constructor <init>(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/sshtools/client/SshClient$PreConnectedSshClientBuilder;->closeOnDisconnect:Z

    .line 87
    iput-object p1, p0, Lcom/sshtools/client/SshClient$PreConnectedSshClientBuilder;->con:Lcom/sshtools/common/ssh/SshConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/SshClient-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/SshClient$PreConnectedSshClientBuilder;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/sshtools/client/SshClient;
    .locals 4

    .line 108
    new-instance v0, Lcom/sshtools/client/SshClient;

    iget-object v1, p0, Lcom/sshtools/client/SshClient$PreConnectedSshClientBuilder;->con:Lcom/sshtools/common/ssh/SshConnection;

    iget-boolean v2, p0, Lcom/sshtools/client/SshClient$PreConnectedSshClientBuilder;->closeOnDisconnect:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sshtools/client/SshClient;-><init>(Lcom/sshtools/common/ssh/SshConnection;ZLcom/sshtools/client/SshClient-IA;)V

    return-object v0
.end method

.method public withoutCloseOnDisconnect()Lcom/sshtools/client/SshClient$PreConnectedSshClientBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/sshtools/client/SshClient$PreConnectedSshClientBuilder;->closeOnDisconnect:Z

    return-object p0
.end method

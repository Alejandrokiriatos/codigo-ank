.class public Lcom/sshtools/client/DefaultClientChannelFactory;
.super Ljava/lang/Object;
.source "DefaultClientChannelFactory.java"

# interfaces
.implements Lcom/sshtools/synergy/ssh/ChannelFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/synergy/ssh/ChannelFactory<",
        "Lcom/sshtools/client/SshClientContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createChannel(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/synergy/ssh/ChannelNG;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ")",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/UnsupportedChannelException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 52
    const-string v0, "forwarded-tcpip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance p1, Lcom/sshtools/client/RemoteForwardingClientChannel;

    invoke-direct {p1, p2}, Lcom/sshtools/client/RemoteForwardingClientChannel;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-object p1

    .line 56
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/DefaultClientChannelFactory;->onCreateChannel(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/synergy/ssh/ChannelNG;

    move-result-object p1

    return-object p1
.end method

.method public createSubsystem(Ljava/lang/String;Lcom/sshtools/common/ssh/SessionChannel;)Lcom/sshtools/common/ssh/Subsystem;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/UnsupportedChannelException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 71
    new-instance p1, Lcom/sshtools/common/permissions/PermissionDeniedException;

    const-string p2, "Client cannot start subsystems"

    invoke-direct {p1, p2}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeCommand(Lcom/sshtools/common/ssh/SessionChannel;[Ljava/lang/String;Ljava/util/Map;)Lcom/sshtools/common/command/ExecutableCommand;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/SessionChannel;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/common/command/ExecutableCommand;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/UnsupportedChannelException;
        }
    .end annotation

    .line 77
    new-instance p1, Lcom/sshtools/common/permissions/PermissionDeniedException;

    const-string p2, "Client cannot execute commands"

    invoke-direct {p1, p2}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onCreateChannel(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/synergy/ssh/ChannelNG;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ")",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/UnsupportedChannelException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 61
    new-instance p2, Lcom/sshtools/common/ssh/UnsupportedChannelException;

    const-string v0, "%s is not a supported channel type"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/UnsupportedChannelException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public supportedCommands()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/command/ExecutableCommand;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Commands are not supported in client configurations"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

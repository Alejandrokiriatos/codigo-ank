.class public interface abstract Lcom/sshtools/synergy/ssh/ChannelFactory;
.super Ljava/lang/Object;
.source "ChannelFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createChannel(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/synergy/ssh/ChannelNG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ")",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/UnsupportedChannelException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation
.end method

.method public abstract createSubsystem(Ljava/lang/String;Lcom/sshtools/common/ssh/SessionChannel;)Lcom/sshtools/common/ssh/Subsystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/UnsupportedChannelException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract executeCommand(Lcom/sshtools/common/ssh/SessionChannel;[Ljava/lang/String;Ljava/util/Map;)Lcom/sshtools/common/command/ExecutableCommand;
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
.end method

.method public abstract supportedCommands()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/common/command/ExecutableCommand;",
            ">;"
        }
    .end annotation
.end method

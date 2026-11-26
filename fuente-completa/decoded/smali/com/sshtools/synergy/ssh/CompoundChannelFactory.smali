.class public Lcom/sshtools/synergy/ssh/CompoundChannelFactory;
.super Ljava/lang/Object;
.source "CompoundChannelFactory.java"

# interfaces
.implements Lcom/sshtools/synergy/ssh/ChannelFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sshtools/synergy/ssh/ChannelFactory<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/synergy/ssh/ChannelFactory<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/CompoundChannelFactory;->factories:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/synergy/ssh/ChannelFactory<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/CompoundChannelFactory;->factories:Ljava/util/List;

    .line 53
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs constructor <init>([Lcom/sshtools/synergy/ssh/ChannelFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sshtools/synergy/ssh/ChannelFactory<",
            "TC;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/CompoundChannelFactory;->factories:Ljava/util/List;

    .line 49
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public addFactory(Lcom/sshtools/synergy/ssh/ChannelFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelFactory<",
            "TC;>;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/CompoundChannelFactory;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createChannel(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/synergy/ssh/ChannelNG;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ")",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/UnsupportedChannelException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/CompoundChannelFactory;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/synergy/ssh/ChannelFactory;

    .line 82
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/sshtools/synergy/ssh/ChannelFactory;->createChannel(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/synergy/ssh/ChannelNG;

    move-result-object p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/UnsupportedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 88
    :cond_0
    new-instance p2, Lcom/sshtools/common/ssh/UnsupportedChannelException;

    const-string v0, "%s is not a supported channel type"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/UnsupportedChannelException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createSubsystem(Ljava/lang/String;Lcom/sshtools/common/ssh/SessionChannel;)Lcom/sshtools/common/ssh/Subsystem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/UnsupportedChannelException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/CompoundChannelFactory;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/synergy/ssh/ChannelFactory;

    .line 96
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/sshtools/synergy/ssh/ChannelFactory;->createSubsystem(Ljava/lang/String;Lcom/sshtools/common/ssh/SessionChannel;)Lcom/sshtools/common/ssh/Subsystem;

    move-result-object p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/UnsupportedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 102
    :cond_0
    new-instance p2, Lcom/sshtools/common/ssh/UnsupportedChannelException;

    const-string v0, "%s is not a supported subsystem"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/UnsupportedChannelException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public executeCommand(Lcom/sshtools/common/ssh/SessionChannel;[Ljava/lang/String;Ljava/util/Map;)Lcom/sshtools/common/command/ExecutableCommand;
    .locals 2
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

    .line 108
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/CompoundChannelFactory;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/synergy/ssh/ChannelFactory;

    .line 110
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/sshtools/synergy/ssh/ChannelFactory;->executeCommand(Lcom/sshtools/common/ssh/SessionChannel;[Ljava/lang/String;Ljava/util/Map;)Lcom/sshtools/common/command/ExecutableCommand;

    move-result-object p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/UnsupportedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 116
    :cond_0
    new-instance p1, Lcom/sshtools/common/ssh/UnsupportedChannelException;

    const/4 p3, 0x0

    aget-object p2, p2, p3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%s is not a supported command"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sshtools/common/ssh/UnsupportedChannelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/synergy/ssh/ChannelFactory<",
            "TC;>;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/CompoundChannelFactory;->factories:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeFactory(Lcom/sshtools/synergy/ssh/ChannelFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelFactory<",
            "TC;>;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/CompoundChannelFactory;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
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

    .line 74
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/CompoundChannelFactory;->factories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/synergy/ssh/ChannelFactory;

    invoke-interface {v0}, Lcom/sshtools/synergy/ssh/ChannelFactory;->supportedCommands()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    return-object v0
.end method

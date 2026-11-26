.class public final synthetic Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/SshClient$InteractiveOutputListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/SshClient$InteractiveOutputListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/client/SshClient$InteractiveOutputListener;

    return-void
.end method


# virtual methods
.method public final commandEvent(Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/SshClient$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/client/SshClient$InteractiveOutputListener;

    invoke-static {v0, p1, p2}, Lcom/sshtools/client/SshClient;->lambda$executeCommandWithResult$1(Lcom/sshtools/client/SshClient$InteractiveOutputListener;Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V

    return-void
.end method

.class public final synthetic Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/SessionChannelNG;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/SessionChannelNG;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda4;->f$0:Lcom/sshtools/client/SessionChannelNG;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda4;->f$0:Lcom/sshtools/client/SessionChannelNG;

    invoke-static {v0}, Lcom/sshtools/client/shell/ExpectShell;->lambda$new$0(Lcom/sshtools/client/SessionChannelNG;)V

    return-void
.end method

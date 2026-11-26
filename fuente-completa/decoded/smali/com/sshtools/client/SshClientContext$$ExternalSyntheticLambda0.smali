.class public final synthetic Lcom/sshtools/client/SshClientContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sshtools/synergy/ssh/ForwardingFactory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createChannelFactory(Ljava/lang/String;I)Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;
    .locals 0

    .line 0
    invoke-static {p1, p2}, Lcom/sshtools/client/SshClientContext;->lambda$static$0(Ljava/lang/String;I)Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;

    move-result-object p1

    return-object p1
.end method

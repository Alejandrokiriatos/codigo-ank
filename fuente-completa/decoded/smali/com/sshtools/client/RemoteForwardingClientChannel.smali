.class public Lcom/sshtools/client/RemoteForwardingClientChannel;
.super Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;
.source "RemoteForwardingClientChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/synergy/ssh/RemoteForwardingChannel<",
        "Lcom/sshtools/client/SshClientContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method

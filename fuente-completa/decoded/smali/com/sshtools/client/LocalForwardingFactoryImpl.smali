.class public Lcom/sshtools/client/LocalForwardingFactoryImpl;
.super Ljava/lang/Object;
.source "LocalForwardingFactoryImpl.java"

# interfaces
.implements Lcom/sshtools/synergy/ssh/ForwardingFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/sshtools/client/SshClientContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sshtools/synergy/ssh/ForwardingFactory<",
        "Lcom/sshtools/client/SshClientContext;",
        "Lcom/sshtools/client/LocalForwardingChannelFactoryImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createChannelFactory(Ljava/lang/String;I)Lcom/sshtools/client/LocalForwardingChannelFactoryImpl;
    .locals 1

    .line 34
    new-instance v0, Lcom/sshtools/client/LocalForwardingChannelFactoryImpl;

    invoke-direct {v0, p1, p2}, Lcom/sshtools/client/LocalForwardingChannelFactoryImpl;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic createChannelFactory(Ljava/lang/String;I)Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/LocalForwardingFactoryImpl;->createChannelFactory(Ljava/lang/String;I)Lcom/sshtools/client/LocalForwardingChannelFactoryImpl;

    move-result-object p1

    return-object p1
.end method

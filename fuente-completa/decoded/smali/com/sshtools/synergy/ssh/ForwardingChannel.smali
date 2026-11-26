.class public abstract Lcom/sshtools/synergy/ssh/ForwardingChannel;
.super Lcom/sshtools/synergy/ssh/ChannelNG;
.source "ForwardingChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Lcom/sshtools/synergy/ssh/ChannelNG<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected hostToConnect:Ljava/lang/String;

.field protected originatingHost:Ljava/lang/String;

.field protected originatingPort:I

.field protected portToConnect:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/sshtools/synergy/ssh/ChannelNG;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Z)V
    .locals 8

    .line 63
    new-instance v6, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {v6}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sshtools/synergy/ssh/ChannelNG;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingChannel;->hostToConnect:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingHost()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingChannel;->originatingHost:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingPort()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/sshtools/synergy/ssh/ForwardingChannel;->originatingPort:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/sshtools/synergy/ssh/ForwardingChannel;->portToConnect:I

    return v0
.end method

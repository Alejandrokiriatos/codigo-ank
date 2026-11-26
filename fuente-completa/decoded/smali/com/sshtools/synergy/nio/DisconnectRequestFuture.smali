.class public Lcom/sshtools/synergy/nio/DisconnectRequestFuture;
.super Lcom/sshtools/common/ssh/AbstractRequestFuture;
.source "DisconnectRequestFuture.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/sshtools/common/ssh/AbstractRequestFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnected()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-super {p0, v0}, Lcom/sshtools/common/ssh/AbstractRequestFuture;->done(Z)V

    return-void
.end method

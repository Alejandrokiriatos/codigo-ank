.class public interface abstract Lcom/sshtools/synergy/ssh/ChannelFactoryListener;
.super Ljava/lang/Object;
.source "ChannelFactoryListener.java"


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
.method public onChannelCreated(Lcom/sshtools/synergy/ssh/ChannelNG;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

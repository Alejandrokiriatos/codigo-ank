.class public interface abstract Lcom/sshtools/synergy/ssh/ForwardingFactory;
.super Ljava/lang/Object;
.source "ForwardingFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        "F::",
        "Lcom/sshtools/synergy/ssh/ForwardingChannelFactory<",
        "TC;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createChannelFactory(Ljava/lang/String;I)Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TF;"
        }
    .end annotation
.end method

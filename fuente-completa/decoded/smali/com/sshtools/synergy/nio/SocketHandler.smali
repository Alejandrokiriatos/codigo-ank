.class public interface abstract Lcom/sshtools/synergy/nio/SocketHandler;
.super Ljava/lang/Object;
.source "SocketHandler.java"

# interfaces
.implements Lcom/sshtools/synergy/nio/SelectorRegistrationListener;
.implements Lcom/sshtools/synergy/nio/SelectionKeyAware;


# virtual methods
.method public abstract addTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
.end method

.method public abstract getConnection()Lcom/sshtools/synergy/ssh/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "+",
            "Lcom/sshtools/synergy/ssh/SshContext;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContext()Lcom/sshtools/synergy/ssh/SshContext;
.end method

.method public abstract getInitialOps()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSelectorThread()Lcom/sshtools/synergy/nio/SelectorThread;
.end method

.method public abstract initialize(Lcom/sshtools/synergy/nio/ProtocolEngine;Lcom/sshtools/synergy/nio/SshEngine;Ljava/nio/channels/SelectableChannel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract processReadEvent()Z
.end method

.method public abstract processWriteEvent()Z
.end method

.method public abstract setThread(Lcom/sshtools/synergy/nio/SelectorThread;)V
.end method

.method public abstract wantsRead()Z
.end method

.method public abstract wantsWrite()Z
.end method

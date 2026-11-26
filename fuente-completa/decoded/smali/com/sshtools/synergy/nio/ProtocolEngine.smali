.class public interface abstract Lcom/sshtools/synergy/nio/ProtocolEngine;
.super Ljava/lang/Object;
.source "ProtocolEngine.java"


# static fields
.field public static final BY_APPLICATION:I = 0xb


# virtual methods
.method public abstract disconnect(ILjava/lang/String;)V
.end method

.method public abstract getConnectFuture()Lcom/sshtools/synergy/nio/ConnectRequestFuture;
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

.method public abstract getDisconnectFuture()Lcom/sshtools/synergy/nio/DisconnectRequestFuture;
.end method

.method public abstract getExecutor()Lcom/sshtools/common/ssh/ExecutorOperationSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/ExecutorOperationSupport<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSocketConnection()Lcom/sshtools/synergy/nio/SocketConnection;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract onSocketClose()V
.end method

.method public abstract onSocketConnect(Lcom/sshtools/synergy/nio/SocketConnection;)V
.end method

.method public abstract onSocketRead(Ljava/nio/ByteBuffer;)Z
.end method

.method public abstract onSocketWrite(Ljava/nio/ByteBuffer;)Lcom/sshtools/synergy/nio/SocketWriteCallback;
.end method

.method public abstract wantsToWrite()Z
.end method

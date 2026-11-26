.class public interface abstract Lcom/sshtools/common/ssh/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract addEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V
.end method

.method public abstract close()V
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-interface {p0, p1}, Lcom/sshtools/common/ssh/Channel;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getChannelType()Ljava/lang/String;
.end method

.method public abstract getConnection()Lcom/sshtools/common/ssh/SshConnection;
.end method

.method public abstract getContext()Lcom/sshtools/common/ssh/Context;
.end method

.method public abstract getLocalPacket()I
.end method

.method public abstract getLocalWindow()Lcom/sshtools/common/util/UnsignedInteger32;
.end method

.method public abstract getRemoteWindow()Lcom/sshtools/common/util/UnsignedInteger32;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isLocalEOF()Z
.end method

.method public abstract isRemoteEOF()Z
.end method

.method public abstract removeEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V
.end method

.method public abstract sendChannelRequest(Ljava/lang/String;Z[B)V
.end method

.method public abstract sendChannelRequest(Ljava/lang/String;Z[BLcom/sshtools/common/ssh/ChannelRequestFuture;)V
.end method

.method public abstract sendData([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendWindowAdjust(Lcom/sshtools/common/util/UnsignedInteger32;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

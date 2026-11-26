.class public interface abstract Lcom/sshtools/common/ssh/SessionChannel;
.super Ljava/lang/Object;
.source "SessionChannel.java"

# interfaces
.implements Lcom/sshtools/common/ssh/Channel;


# virtual methods
.method public abstract getConnection()Lcom/sshtools/common/ssh/SshConnection;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getMaximumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;
.end method

.method public abstract getMinimumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract haltIncomingData()V
.end method

.method public abstract onSessionOpen()V
.end method

.method public abstract resumeIncomingData()V
.end method

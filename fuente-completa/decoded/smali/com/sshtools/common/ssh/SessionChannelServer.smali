.class public interface abstract Lcom/sshtools/common/ssh/SessionChannelServer;
.super Ljava/lang/Object;
.source "SessionChannelServer.java"

# interfaces
.implements Lcom/sshtools/common/ssh/SessionChannel;


# virtual methods
.method public abstract getErrorStream()Ljava/io/OutputStream;
.end method

.method public pauseDataCaching()V
    .locals 0

    return-void
.end method

.method public resumeDataCaching()V
    .locals 0

    return-void
.end method

.method public abstract setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)Z
.end method

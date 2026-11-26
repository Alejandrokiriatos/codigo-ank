.class public interface abstract Lcom/sshtools/synergy/ssh/Service;
.super Ljava/lang/Object;
.source "Service.java"


# virtual methods
.method public abstract getIdleLog()Ljava/lang/String;
.end method

.method public abstract getIdleTimeoutSeconds()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract idle()Z
.end method

.method public abstract processMessage([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

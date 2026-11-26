.class public interface abstract Lcom/sshtools/client/shell/ShellReader;
.super Ljava/lang/Object;
.source "ShellReader.java"


# virtual methods
.method public abstract readLine()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation
.end method

.method public abstract readLine(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation
.end method
